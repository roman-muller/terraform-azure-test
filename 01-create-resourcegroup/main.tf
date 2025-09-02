resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    oe          = "ch_iu"          # must be one of the allowed values
    ritaid      = "d1"             # must be one of: d, d1, d2, …, m
    environment = "dev"            # must be one of: ch_ib, ch_id, ch_if, etc. (check policy)
  }
}
