try {
    Import-Module Microsoft.SharePoint.PowerShell -ErrorAction Stop
    Write-Output "SharePoint module loaded successfully."
} catch {
    Write-Output "SharePoint module could not be loaded."
}
