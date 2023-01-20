terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.21.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "ssh" {
  name = "sickp/centos-sshd:latest"
}

# Create a container
resource "docker_container" "vpn" {
  image = docker_image.ssh.image_id
  name  = "prenom.nom-vpn"
  ports {
    internal = 22
    external = 11202
  }

  ports {
    internal = 1194
    external = 12202
  }
}
