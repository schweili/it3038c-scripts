function getIP{
    (Get-NetIPAddress).IPv4Address | Select-String "192*"
    }
$IP = getIP
$USER = whoami
$HostName = hostname
$Version = $PSVersionTable.PSVersion 
$Date = Get-Date
Write-Host("This machine's IP is $IP. The User is $USER. The hostname is $HostName. Powershell Version $Version. The date and time is $Date")
