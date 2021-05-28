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
    name= "${lookup(var.image_name, var.env)}"
}

resource "docker_container" "ghost_container" {
  image= docker_image.ghost_image.latest
  name= "${lookup(var.container_name, var.env)}"
  ports {
      internal= 2368
      external= "${lookup(var.ext_port, var.env)}"
  }
}
