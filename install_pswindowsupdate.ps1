# update Security Protocol Type to TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# install NuGet package provider
Set-Executionpolicy Bypass
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force -Confirm:$false

# install PSWindowsUpdate module
Install-Module -Name PSWindowsUpdate -Force -Confirm:$false

# import PSWindowsUpdate module
Import-Module PSWindowsUpdate

# EOF
