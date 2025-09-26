# 00 - HelloWorld (Local Providers Only)

Purpose:
Smallest Terraform example that writes a local file. Demonstrates basic Terraform workflow without Azure dependencies.

Files:

- main.tf: declares a `local_file` resource that writes `hello.txt`.

Workflow (PowerShell):

```powershell
cd terraform-azure-test\00-HelloWorld
terraform init
terraform plan
terraform apply -auto-approve

terraform destroy -auto-approve
```

No Azure login needed. Safe to experiment.
