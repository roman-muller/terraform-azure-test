[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string]$Root = (Get-Location).Path
)

Write-Verbose "Cleaning Terraform artifacts under '$Root'"

Get-ChildItem -Path $Root -Recurse -Directory -Force |
    Where-Object { $_.Name -eq ".terraform" } |
    ForEach-Object {
        if ($PSCmdlet.ShouldProcess($_.FullName, "Remove directory")) {
            Remove-Item -LiteralPath $_.FullName -Recurse -Force
        }
    }

$patterns = @("*.tfstate", "*.tfstate.*", "*.plan", "crash.log", "crash.*.log", ".terraform.lock.hcl")
foreach ($pattern in $patterns) {
    Get-ChildItem -Path $Root -Recurse -File -Force -Filter $pattern |
        ForEach-Object {
            if ($PSCmdlet.ShouldProcess($_.FullName, "Remove file")) {
                Remove-Item -LiteralPath $_.FullName -Force
            }
        }
}

Write-Host "Terraform artifacts removed."