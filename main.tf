provider "aws" {
  region = "us-west-2"
  # access_key = "${var.access_key}"
  # secret_key = "${var.secret_key}"
}


#module
module "networkModule" {
  source = "./modules/network"
}

#module
module "webserverModule" {
  source = "./modules/webserver"
  ssh_id = "${module.networkModule.ssh.id}"
}

#module
module "dbserverModule" {
  source = "./modules/databaseserver"
  webserverIP = "${module.webserverModule.webserver_public_instance_ip}"
}

