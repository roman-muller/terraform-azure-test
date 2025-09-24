output "resource_group_name" {
  value = azurerm_resource_group.demo.name
}

output "container_ip" {
  value       = azurerm_container_group.demo.ip_address
  description = "Public IP (or FQDN) assigned to the container group"
}
