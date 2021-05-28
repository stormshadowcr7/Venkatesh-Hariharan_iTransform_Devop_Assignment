resource "docker_container" "mysql_container" {
  image = docker_image.mysql_image.name
  name  = var.container_name
  env= ["MYSQL_ROOT_PASSWORD= var.mysql_root_password"]  
  volumes {
    volume_name= docker_volume.mysql_data_volume.name
    container_path= "/var/lib/mysql"
  }
 network_mode = docker_network.private_bridge_network.driver
 hostname = docker_network.private_bridge_network.name
}
