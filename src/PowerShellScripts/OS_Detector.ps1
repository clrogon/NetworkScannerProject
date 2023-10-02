param(
    [string]$computerName = "localhost"
)

$os = Get-WmiObject -Class Win32_OperatingSystem -ComputerName $computerName
Write-Output "OS: $($os.Caption) - $($os.Version)"
