#Output the IP Address of the Container
output "ip_address" {
  value       = module.root.ip_address
  description = "The IP for the container."
}

output "container_name" {
  value       = module.root.container_name
  description = "The name of the container."
}
