variable "image_name"{
    description= "Image name"
    default= "ghost:latest"
}
variable "container_name"{
    description= "This is container name"
    default= "ghost_blog"
}
variable "ext_port"{
    description= "This is container port"
    default= "80"
}
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
  image = var.image_name
  name  = var.container_name
  ports {
      internal= 2368
      external= var.ext_port
  }
}