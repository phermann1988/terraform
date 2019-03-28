
resource "aws_instance" "webserver" {
  #vpc_security_group_ids = "${var.ssh_id}" 
  ami = "ami-03c652d3a09856345"
  instance_type = "t2.micro"
  key_name = "ec2_2"

  user_data = <<-EOF
              #!/bin/bash
              echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhxOF97t/OcVcPGDcmoAqzBfEkeu5NcCYMtr61p4mJZboJZuqkpA8cNEu6zmnnSzQ7bqgEOpwAcL/PlFTJZqKalTICXt/0HJJmE5Q9h/YuH3B1CWoes4QqHUuVn00MeeHb8nfXhU85TAKaz7ZecDV6PWvVVIH9MSHUenukm3n+0JVnKh/wAu7/sBVkI4wbDqvaV+umHT13FVlg2uEQGo3SVaRhVgOw5874Wgz0Y7xK1LRlC3nt6aW/savbX8wgRSfFWvlFG0KKa/dP+RY530lZ39sXxerq3izgNFvPj6TSJCEHp3XISQOPkWPbgkHJBFlZom5ae7MXWh/FHC7MW41P tf_ansible" >> /home/ec2-user/.ssh/authorized_keys
              EOF

  lifecycle {
    create_before_destroy = true
  }

  tags {
    Name = "webserver"
    Component = "db"
  }

}
