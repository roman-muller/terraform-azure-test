terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  # Authentication: run 'az login --tenant <tenant-id>' (and 'az account set --subscription <sub-id>') before plan/apply
  # Or set ARM_* environment variables for a service principal.
}

resource "azurerm_resource_group" "demo" {
  name     = "rg-terraform-demo"
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_container_group" "demo" {
  name                = "demo-container"
  location            = azurerm_resource_group.demo.location
  resource_group_name = azurerm_resource_group.demo.name
  os_type             = "Linux"
  ip_address_type     = "Public"
  tags                = local.common_tags

  container {
    name   = "hello-world"
    image  = "mcr.microsoft.com/azuredocs/aci-helloworld"
    cpu    = 2
    memory = 4

    ports {
      port     = var.http_port
      protocol = "TCP"
    }
  }

}
