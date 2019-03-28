output "databaseserver_public_instance_ip" {
  value = ["${aws_instance.databaseserver.public_ip}"]
}
