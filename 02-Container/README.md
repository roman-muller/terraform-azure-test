# 02 - Azure Container Instance (ACI) Demo

Purpose:
Create a tagged Resource Group plus a simple Azure Container Instance. Demonstrates:
- Required tag compliance (oe, ritaid, environment)
- Handling Docker Hub rate limits (alternative image option)

Files:
- providers.tf: azurerm + features
- variables.tf: location, tags, image
- main.tf: resource group + azurerm_container_group
- outputs.tf: container FQDN / IP (if public)

Default image:
Uses mcr.microsoft.com/azuredocs/aci-helloworld (stable + not rate limited).
Switch to nginx:1.25-alpine only if Docker Hub access is allowed.

Common Commands (PowerShell):
```powershell
# Enter a lab
cd C:\Users\mro6\source\repos\terraform-azure-test\02-Container
terraform init
terraform plan -var oe=ch_ib -var ritaid=d -var environment=d
terraform apply -auto-approve -var oe=ch_ib -var ritaid=d -var environment=d
terraform destroy -auto-approve -var oe=ch_ib -var ritaid=d -var environment=d
```
Clean Up:
Always terraform destroy per lab to avoid lingering cost.

