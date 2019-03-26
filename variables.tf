variable "server_port" {
  description = "ssh port"
  default = 22
}

variable "my_external_ip" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  default     = "${formatlist("%s/32", concat(aws_eip.stuff.*.public_ip, aws_eip.things.*.public_ip))}"
}
