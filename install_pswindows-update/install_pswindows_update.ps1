
# set the security protocol to TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# install the PSWindowsUpdate module
Install-Module PSWindowsUpdate

# start the module
Import-Module PSWindowsUpdate

# EOF
