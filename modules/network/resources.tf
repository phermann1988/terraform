terraform {
  required_version = ">= 0.10.3" # introduction of Local Values configuration language feature
}

resource "aws_security_group" "ssh" {
  name = "ssh"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["217.17.17.138/32"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }



}
