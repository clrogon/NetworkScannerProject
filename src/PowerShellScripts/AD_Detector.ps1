try {
    $domainController = Get-ADDomainController -Discover
    Write-Output "Active Directory Domain Controller: $($domainController.HostName)"
} catch {
    Write-Output "No Active Directory Domain Controller found."
}
