provider "aws" {
  region = "us-west-2"
  # access_key = "${var.access_key}"
  # secret_key = "${var.secret_key}"
}


#module
module "webserverModule" {
  source = "./modules/webserver"
}


#module
module "networkModule" {
  source = "./modules/network"
}

# variable "vpc_subnets" {
#   type = "string"
# }
