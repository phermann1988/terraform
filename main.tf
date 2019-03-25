provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]
  ami = "ami-03c652d3a09856345"
  instance_type = "t2.micro"
  key_name = "ec2_2"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p "${var.server_port}" &
              curl localhost: "${var.server_port}"
              EOF

  lifecycle {
    create_before_destroy = true
  }

  tags {
    Name = "testmachine"
    Component = "web"
  }

}
