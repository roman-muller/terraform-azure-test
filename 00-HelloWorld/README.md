# 00 - HelloWorld (Local Providers Only)

Purpose:
Smallest Terraform example with no Azure resources (avoids org policies). Demonstrates variables, random provider, and writing a local file.

Files:

- main.tf: resources (random_string, local_file)

Workflow (PowerShell):

```powershell
cd terraform-azure-test\00-HelloWorld
terraform init
terraform plan
terraform apply -auto-approve
type hello.txt
terraform destroy -auto-approve
```

No Azure login needed. Safe to experiment.