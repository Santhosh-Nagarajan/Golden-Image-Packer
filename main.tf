resource "google_compute_instance" "default" {
  name         = var.instance-name
  machine_type = var.machine-type
  zone         = var.zone


  tags = ["web", "ssh"]

  boot_disk {
    initialize_params {
      size  = var.size
      image = var.image-name
      labels = {
        my_label = "lable-${var.instance-name}"
      }
    }
    kms_key_self_link = google_kms_crypto_key.example-key.id
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true

  }

  network_interface {
    network    = "default"
    subnetwork = "default"
    access_config {}
  }

  metadata = {
    block-project-ssh-keys = true

  }


  metadata_startup_script = file("./${var.startup-script}")

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    email  = var.email

  }
}

# Create HTTP firewall rule
resource "google_compute_firewall" "http_firewall" {
  name    = "web-firewall-${var.instance-name}"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = var.port
  }

  source_ranges = var.http-source-range
  target_tags   = ["web"]
}

# Create SSH firewall rule

resource "google_compute_firewall" "default" {
  name    = "ssh-firewall-${var.instance-name}"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = var.ssh-source-range
  target_tags   = ["ssh"]
}
