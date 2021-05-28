#container_name: mysql.
##	2. mysql_root_password: P4sSw0rd0!.
#	3. mysql_network_name: mysql_internal_network.
#	4. mysql_volume_name: mysql_data.

variable "container_name" {
    default=  "mysql"
}

variable "mysql_root_password" {
    default= "P4sSw0rd0!"
}

variable "mysql_network_name" {
    default=  "mysql_internal_network"
}

variable "mysql_volume_name" {
    default=  "mysql_data"
}



