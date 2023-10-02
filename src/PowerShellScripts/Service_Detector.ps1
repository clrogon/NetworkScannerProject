param(
    [string]$computerName = "localhost"
)

$services = Get-Service -ComputerName $computerName
$services | Format-Table -Property Name, DisplayName, Status
