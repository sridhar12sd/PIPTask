resource "google_compute_instance" "linux-instance" {
  name = "linux-instance"
  boot_disk {
    initialize_params {
      image = "centos-7-v20230306"
    }
  }
  machine_type = "n1-standard-1"
  network_interface {
    network = google_compute_network.vpc_network.name
  }
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_firewall" "allow-port" {
  name = "allow-port"
  network = google_compute_network.vpc_network.name
  allow {
    protocol = "tcp" 
    ports = ["8040"]
  }
}
