# Terraform Azure Demos

## Structure

- `00-HelloWorld` – local provider example writing `hello.txt`
- `01-...` (future scenarios)
- `02-Container` – Azure Container Instance with tagged resource group

## Prerequisites

- Terraform ≥ 1.6
- Azure CLI (`az login`, `az account set --subscription <id>` for Azure scenarios)
- Optional `terraform.tfvars` (e.g. `demo.tfvars`) for container CPU/memory overrides

## Common Workflow (PowerShell)

```powershell
# HelloWorld (no Azure login)
cd terraform-azure-test\00-HelloWorld
terraform init
terraform apply -auto-approve
terraform destroy -auto-approve

# Azure Container Instance
cd terraform-azure-test\02-Container
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```

## Cleanup Script

Use `cleanup.ps1` in repo root to remove state, plans, and `.terraform` folders after demos.
