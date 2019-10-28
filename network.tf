resource "google_compute_network" "vpcnetwork" {
  name = "vpc-network"
  auto_create_subnetworks = false
}
