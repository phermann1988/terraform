output "public_instance_ip" {
  value = ["${aws_instance.webserver.public_ip}"]
}

output "public_instance_ip" {
  value = ["${aws_instance.databaseserver.public_ip}"]
}
