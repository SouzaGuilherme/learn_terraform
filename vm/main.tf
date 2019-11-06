# Configura o projeto gpc
provider "google" {
  credentials = "${file("manifest-welder-256621-812ba4a8d9e0.json")}"
  project = "${var.project_id}"
  region = "${var.regiao}"
}

#cria a VM com o goole compute engine
resource "google_compute_instance" "webserver" {
  name = "${var.nome}"
  machine_type = "${var.tipo_maquina}"
  zone = "${var.zona}"

  boot_disk {
    initialize_params {
      image = "${var.imagem}"
    }
  }

  
  #Habilita rede para a VM bem como um IP publico
  network_interface {
    network = "default"
    access_config {

    }
  }
}

#cria o Firewall para a VM
resource "google_compute_firewall" "webfirewall" {
  name = "${var.nome_fw}"
  network = "default"

  allow {
    protocol = "tcp"
    ports = "${var.portas}"
  }
}
