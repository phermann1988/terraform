terraform {
  required_version = ">= 0.10.3" # introduction of Local Values configuration language feature
}

resource "aws_security_group" "instance" {
  name = "ssh"

  ingress {
    from_port = 22
    to_port = "${var.server_port}"
    protocol = "tcp"
    cidr_blocks = ["213.216.20.86/32"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
