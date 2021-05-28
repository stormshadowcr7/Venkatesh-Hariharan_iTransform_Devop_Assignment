terraform {
required_providers {
docker = {
source = "kreuzwerker/docker"
version = "2.12.0"
}
}
}
provider "docker" {
host = "npipe:////.//pipe//docker_engine"
}
resource "docker_image" "ghost_image" {
    name= var.image_name
    }

resource "docker_container" "ghost_container" {
  image= docker_image.ghost_image.latest
  name= var.container_name
  ports {
      internal= 2368
      external= var.ext_port
  }
}