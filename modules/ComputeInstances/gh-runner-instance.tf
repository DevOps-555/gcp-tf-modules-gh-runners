resource "google_compute_instance" "gh_runners_01" {
  project = "${var.gcp_project}"
  name         = "gh-runners01"
  machine_type = "e2-medium"
  zone         = "us-central1-c"

  tags = ["poc-utility"]

  boot_disk {
    auto_delete = true
    device_name = "ansible-disk-02"

    initialize_params {
      image = "${var.image}"
      size = 10
    }
  }

  labels = {
    agent = "qualys-cloud-deb"
  }

  network_interface {
    network = "default"
    network_ip = ""
    access_config {
    }
  }

  metadata = {
    ssh-keys = ""
  }

  # provisioner "remote-exec" {
  #   connection {
  #     type        = "ssh"
  #     user        = "${var.ssh_user}"
  #     private_key = file(var.private_key_path)
  #     host        = self.network_interface[0].access_config[0].nat_ip
  #     timeout     = "1m"
  #   }

  #   inline = [
  #     "echo Hello, World!",
  #     "sudo apt-get update",
  #     "sudo apt-add-repository ppa:ansible/ansible -y",
  #     "sudo apt-get install -y ansible"
  #   ]
  # }
}