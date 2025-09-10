# 00 - HelloWorld (Local Providers Only)

Purpose:
Smallest Terraform example with no Azure resources (avoids org policies). Demonstrates variables, random provider, and writing a local file.

Files:
- providers.tf: terraform + required providers (random, local)
- variables.tf: input vars
- main.tf: resources (random_string, local_file)
- outputs.tf: exposed values (generated string, file path)

Workflow (PowerShell):
```powershell
cd C:\Users\mro6\source\repos\terraform-azure-test\00-HelloWorld
terraform init
terraform plan
terraform apply -auto-approve
type hello.txt
terraform destroy -auto-approve
```

No Azure login needed. Safe to experiment.