﻿param (
    [Parameter(Mandatory = $true)]
    [string]$FolderName,
    
    [Parameter(Mandatory = $true)]
    [string]$ZipFileName
)

$sourceFolder = "C:\Path\To\Downloads\"
$destinationFolder = "C:\Path\To\Downloads\Portfolios\$FolderName"

$sourceFile = Join-Path -Path $sourceFolder -ChildPath "$ZipFileName.ZIP"
$destinationFile = Join-Path -Path $destinationFolder -ChildPath "$ZipFileName.ZIP"

if (Test-Path $sourceFile) {
    Move-Item -Path $sourceFile -Destination $destinationFile -Force
    Write-Host "File test.zip moved successfully from $($sourceFolder) to $($destinationFolder)."
} else {
    Write-Host "File test.zip not found in $($sourceFolder)."
}
