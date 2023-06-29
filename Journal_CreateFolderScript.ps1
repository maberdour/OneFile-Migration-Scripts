param (
    [Parameter(Mandatory = $true)]
    [string] $FolderName,

    [Parameter(Mandatory = $true)]
    [string] $SubFolderName
)

$folderPath = "C:\Users\AberdourM.BG\Downloads\Journals\$FolderName"

if (-not (Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath | Out-Null
    Write-Host "New folder created at $($folderPath)."
} else {
    Write-Host "Folder $($folderPath) already exists."
}

$subFolderPath = "C:\Users\AberdourM.BG\Downloads\Journals\$FolderName\$SubFolderName"

if (-not (Test-Path -Path $subFolderPath)) {
    New-Item -ItemType Directory -Path $subFolderPath | Out-Null
    Write-Host "New folder created at $($subFolderPath)."
} else {
    Write-Host "Folder $($subFolderPath) already exists."
}