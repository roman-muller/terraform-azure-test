# Terraform: Create Azure Resource Group

This module creates a single Azure Resource Group using the HashiCorp AzureRM provider.

## What’s here

- `main.tf` — Declares the `azurerm_resource_group` and example tags
- `variables.tf` — Input variables with defaults
- `providers.tf` — Provider pin (AzureRM ~> 4.x) and features block
- `outputs.tf` — Exposes the resource group name
- `.terraform.lock.hcl` — Provider dependency lockfile (auto-generated)
- `terraform.tfstate*` — Local state files (auto-created; don’t commit)

## Prerequisites

- Azure subscription with permission to create resource groups
- Terraform 1.x
- Azure CLI installed and logged in: `az login`
  - Optional: set target subscription: `az account set --subscription <SUBSCRIPTION_ID_OR_NAME>`

## Variables

- `resource_group_name` (string)
  - Description: The name of the resource group
  - Default: `test-terraform-rg`
- `resource_group_location` (string)
  - Description: Azure region for the resource group
  - Default: `westeurope`

## Quick start (PowerShell)

```powershell
# From the repo root or this folder
cd 01-create-resourcegroup

# Initialize providers
terraform init

# Review the plan (override defaults if needed)
terraform plan `
  -var "resource_group_name=my-rg" `
  -var "resource_group_location=westeurope" `
  -out tfplan

# Apply the plan
terraform apply tfplan

# Show outputs
terraform output
```

## Example: adjusting tags

Tags in `main.tf` are examples; update to your organization’s policy values as needed:

```hcl
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    oe          = "ch_iu"
    ritaid      = "d1"
    environment = "dev"
  }
}
```

## Outputs

- `resource_group_name` — The name of the created resource group

## Clean up

```powershell
terraform destroy
```

## Tips

- Keep `terraform.tfstate` out of source control; consider a remote backend for teams.
- Provider is pinned to `~> 4.0` in `providers.tf`. Update deliberately if you need newer features.
