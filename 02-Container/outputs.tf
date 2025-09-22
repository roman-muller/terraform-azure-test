output "resource_group_name" {
  value = azurerm_resource_group.demo.name
}

output "container_ip" {
  value = azurerm_container_group.demo.ip_address
  description = "Public IP (or FQDN) assigned to the container group"
}

output "container_ip_and_port" {
  value = "${azurerm_container_group.demo.ip_address}:${var.http_port}" 
  description = "Public IP (or FQDN) plus port assigned to the container group"
}