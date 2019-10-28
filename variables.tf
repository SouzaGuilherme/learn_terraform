variable "credentials" {
  type        = string
}

variable "project_id" {
  type        = string
}

variable "region" {
  type        = string
}

variable "zones" {
  type        = list(string)
}

variable "name" {
  type        = string
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "machine_type" {
  type        = string
}

variable "min_count" {
  type        = number
}

variable "max_count" {
  type        = number
}

variable "disk_size_gb" {
  type        = number
}

variable "service_account" {
  type        = string
}

variable "initial_node_count" {
  type        = number
}
