$serviceName = "vstsagent.gsnreddy.Default.pdo-agent-vm"

# Check if the service is running
if (Get-Service -Name $serviceName -ErrorAction SilentlyContinue | Where-Object {$_.Status -eq "Running"}) {
    Write-Host "The $serviceName service is running."
} else {
    Write-Host "The $serviceName service is not running."
}
