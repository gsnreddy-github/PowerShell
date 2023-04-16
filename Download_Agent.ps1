$urlsource = 'https://vstsagentpackage.azureedge.net/agent/3.218.0/vsts-agent-win-x64-3.218.0.zip'
$downloadLocation = '$HOME\Downloads\vsts-agent-win-x64-3.218.0.zip.zip'
$agentDirectory = "c:\agent"


try {
$response = Invoke-RestMethod -Uri $urlsource -OutFile $downloadLocation
write-Host  "Url response:" + $response

New-Item -Path $agentDirectory -ItemType Directory
cd $agentDirectory

Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory($downloadLocation, "$PWD")

} catch{
    Write-Host "An error occurred:"
    Write-Host $_.ScriptStackTrace
}

