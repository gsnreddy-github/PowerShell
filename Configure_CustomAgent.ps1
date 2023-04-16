$urlsource = 'https://vstsagentpackage.azureedge.net/agent/3.218.0/vsts-agent-win-x64-3.218.0.zip'
$downloadLocation = "$HOME\Downloads\vsts-agent-win-x64-3.218.0.zip"
$agentDirectory = "C:\agent"

try {
    #Write-Host "Downloading agent..."
    #Invoke-WebRequest -Uri $urlsource -OutFile $downloadLocation
    #Invoke-RestMethod -Uri $urlsource -OutFile $downloadLocation
    #Write-Host "Agent downloaded."

    Write-Host "Creating agent directory..."
    New-Item -Path $agentDirectory -ItemType Directory
    Set-Location $agentDirectory
    Write-Host "Agent directory created."

    Write-Host "Extracting agent config files..."
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::ExtractToDirectory($downloadLocation, $agentDirectory)
    Write-Host "Agent config files extracted."

} catch {
    Write-Host "An error occurred:"
    Write-Host $_.Exception.Message
}

