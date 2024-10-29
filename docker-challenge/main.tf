terraform {
 required_providers {
  docker = {
   source = "kreuzwerker/docker"
   version = "~> 2.22.0"
   }
 }
}

provider "docker" {}

resource "docker_image" "simplegoservice" {
    name        = "simplegoservice"
}

resource "docker_container" "simplegoservice" {
    image       = docker_image.simplegoservice
    name        = var.container_name
    ports {
        internal = var.internal_port
        external = var.external_port

variable "container_name" {
    default     = "Alta3ResearchWebService"
}

variable "internal_port" {
    type     = number
    default  = 9876
}

variable "external_port" {
    type     = number
    default  = 5432
}


