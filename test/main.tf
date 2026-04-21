resource "google_service_account" "default" {
  account_id   = data.terraform_sa
  display_name = "Custom SA for VM Instance"
}

resource "google_compute_instance" "instance" {
  name             = var.gce_name
  zone             = "us-central1-a"
  machine_type     = var.instance-type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      labels = var.labels

    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}