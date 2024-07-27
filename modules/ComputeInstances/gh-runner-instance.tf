resource "google_compute_instance" "gh_runners_02" {
  project = "${var.gcp_project}"
  name         = "gh-runners02"
  machine_type = "e2-medium"
  zone         = "us-central1-b"

  tags = ["default"]

  boot_disk {
    auto_delete = true
    device_name = "gh-runner-disk-01"

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
}