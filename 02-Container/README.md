# 02 - Azure Container Instance (ACI) Demo

## Overview

Provision a tagged resource group and a public Azure Container Instance (ACI). 

## Prerequisites

- Azure CLI authenticated (`az login`, `az account set --subscription <id>`)
- Terraform ≥ 1.6

## Files

- `variables.tf` – location, tag inputs, container object
- `main.tf` – resource group + `azurerm_container_group`
- `outputs.tf` – container FQDN and IP (if public)

## Usage (PowerShell)

```powershell
cd terraform-azure-test\02-Container
terraform init
terraform plan 
terraform apply -auto-approve
```

## Cleanup

```powershell
terraform destroy -auto-approve
```

Always destroy the lab resources to avoid cost.
