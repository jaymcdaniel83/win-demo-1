
# add an argument for the KB number to update
param(
    [string]$KBNumber
)

# will download the latest updates available
Write-Host "Getting latest updates available..."
Get-WindowsUpdate

# will download the provided KB number
Write-Host "Downloading KB Article [$KBNumber] ..."
Install-WindowsUpdate -KBArticleID $KBNumber -AcceptAll -Verbose

# EOF

#Install-WindowsUpdate -KBArticleID KB5041576 -Verbose -PSWUSettings '@{SmtpServer="vulcan.local";From="jmcdaniel@vulcan.local";To="jmcdaniel@vulcan.local";Port=587;Subject="Windows Server 2016 Updated";Style="Table"}' -SendReport

# EOF
