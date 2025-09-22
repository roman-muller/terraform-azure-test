# 02 - Azure Container Instance (ACI) Demo

Purpose:
Create a tagged Resource Group plus a simple Azure Container Instance. Demonstrates:

- Required tag compliance (oe, ritaid, environment)

Files:

- variables.tf: location, tags, image
- main.tf: resource group + azurerm_container_group
- outputs.tf: container FQDN / IP (if public)

Default image:
Uses mcr.microsoft.com/azuredocs/aci-helloworld (stable + not rate limited).
Switch to nginx:1.25-alpine only if Docker Hub access is allowed.

Common Commands (PowerShell):
```powershell

# Enter a lab
cd terraform-azure-test\02-Container
terraform init
terraform plan 
terraform apply -auto-approve 
terraform destroy -auto-approve 
```

Clean Up:
Always terraform destroy per lab to avoid lingering cost.
