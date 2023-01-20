terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.21.0"
    }
  }
}

provider "docker" {
  host = "ssh://tcom@10.10.0.104"
  ssh_opts = ["-o", "StrictHostKeyChecking=no", "-o", "UserKnownHostsFile=/dev/null"]
}

# Pulls the image
resource "docker_image" "ssh-server" {
  name = "rastasheep/ubuntu-sshd:latest"
}

# Create a container
resource "docker_container" "proxy" {
  image = docker_image.ssh-server.image_id
  name  = "prenom.nom-reverse"

  ports {
    internal = 22
    external = 11202
  }

  ports {
    internal = 80
    external = 12202
  }
}

resource "docker_container" "app1" {
  image = docker_image.ssh-server.image_id
  name  = "prenom.nom-app1"

  ports {
    internal = 22
    external = 21202
  }

  ports {
    internal = 80
    external = 22202
  }
}

resource "docker_container" "app2" {
  image = docker_image.ssh-server.image_id
  name  = "prenom.nom-app2"

  ports {
    internal = 22
    external = 31202
  }

  ports {
    internal = 80
    external = 32202
  }
}
