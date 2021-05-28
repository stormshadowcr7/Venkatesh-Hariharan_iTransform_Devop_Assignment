variable "image_name" {
  default = "ghost:latest"
  description = "Image for container"
}
variable "container_name" {
  default = "blog"
  description = "Name of the container"
}
variable "ext_port" {
  default = 80
  description = "External port for container"
}