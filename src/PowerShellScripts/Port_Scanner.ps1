param(
    [string]$computerName = "localhost",
    [int[]]$ports = @(80, 443)
)

$ports | ForEach-Object {
    $port = $_
    $result = Test-NetConnection -ComputerName $computerName -Port $port
    if ($result.TcpTestSucceeded) {
        Write-Output "Port $port is open on $computerName"
    } else {
        Write-Output "Port $port is closed on $computerName"
    }
}
