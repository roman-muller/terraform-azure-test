resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    oe          = "ch_iu"          
    ritaid      = "d1"             
    environment = "dev"            
  }
}
