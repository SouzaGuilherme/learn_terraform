variable "project_id" {
  type = "string"
  default = "manifest-welder-256621"
}

variable "regiao" {
  type = "string"
  default = "northamerica-northeast1"
}

variable "nome" {
  type = "string"
  default = "vm-webserver"
}

variable "tipo_maquina" {
  type = "string"
  default = "f1-micro"
}

variable "zona" {
  type = "string"
  default = "northamerica-northeast1-a"
}
variable "imagem" {
  type = "string"
  default = "debian-9"
}

variable "nome_fw" {
  type = "string"
  default = "webserver-firewall"
}

variable "portas" {
  type = "list"
  default = ["80"]
}
