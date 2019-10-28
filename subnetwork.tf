resource "google_compute_subnetwork" "my-subnetwork" {
  name = "default-us-central1"
  ip_cidr_range = "10.2.0.0/16"
  region = var.region
  network = "${google_compute_network.vpcnetwork.self_link}"
  secondary_ip_range {
    range_name = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}
