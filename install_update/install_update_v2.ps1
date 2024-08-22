
# get the hostname and convert it to uppercase
$current_host_name = hostname
$current_host_name = $current_host_name.ToUpper()

$host_name = "HOSTNAME_TO_RUN_ON"
if ($current_host_name -ne $host_name) {
    Write-Host "Skipping running of script; wrong machine..."
    Exit 0
}

# will download the latest updates available
Write-Host "Getting latest updates available..."
Get-WindowsUpdate

# will download the provided KB number
$KBNumber = "KB5042350"
Write-Host "Downloading KB Article [$KBNumber] ..."
Install-WindowsUpdate -KBArticleID $KBNumber -AcceptAll -Verbose

# EOF

#Install-WindowsUpdate -KBArticleID KB5041576 -Verbose -PSWUSettings '@{SmtpServer="vulcan.local";From="jmcdaniel@vulcan.local";To="jmcdaniel@vulcan.local";Port=587;Subject="Windows Server 2016 Updated";Style="Table"}' -SendReport

# EOF
