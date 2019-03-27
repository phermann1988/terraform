resource "null_resource" "provision" {

  }

  connection {
    user         = "ec2-user"
    host         = "213.216.20.86"
  }


  provisioner "ansible" {
    plays {
      playbook = {
        file_path = "/github/terraform/test.yml"
        # roles_path = ["/github/messaging-kafka-app/roles"]
      }
      enabled = true
      # hosts = ["ksql-server.dev-fra.messaging-kafka.aws.internal"]
      become = false
      become_method = "sudo"
      become_user = "root"

      inventory_file = "/github/terraform/hosts"
      limit = "ec2"

    }

    ansible_ssh_settings {
      insecure_no_strict_host_key_checking = "true"
      connect_timeout_seconds = 10
      connection_attempts = 10
      connect_timeout_seconds = 60
      ssh_keyscan_timeout = 180
    }
}}
