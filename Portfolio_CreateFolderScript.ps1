param (
    [Parameter(Mandatory = $true)]
    [string] $FolderName
)

$folderPath = "C:\Users\AberdourM.BG\Downloads\Portfolios\$FolderName"

if (-not (Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath | Out-Null
    Write-Host "New folder created at $($folderPath)."
} else {
    Write-Host "Folder $($folderPath) already exists."
}