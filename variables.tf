variable "server_port" {
  description = "ssh port"
  default = 22
}

variable "my_external_ip" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  default     = "0.0.0.0/0"
}
