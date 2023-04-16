Invoke-WebRequest https://download.visualstudio.microsoft.com/download/pr/d97e0776-b316-4c41-a067-202eb027b968/e9694b0aa94e4b814f980f9ec3d3f400/dotnet-hosting-7.0.4-win.exe -outfile $env:temp\DotNetCore.WindowsHosting.exe
Start-Process $env:temp\DotNetCore.WindowsHosting.exe -ArgumentList '/quiet' -Wait
