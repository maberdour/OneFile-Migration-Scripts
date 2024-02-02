param (
    [Parameter(Mandatory = $true)]
    [string]$FolderName,

    [Parameter(Mandatory = $true)]
    [string]$SubFolderName,
    
    [Parameter(Mandatory = $true)]
    [string]$FileName
)

$sourceFolder = "C:\Path\To\Downloads"
$destinationFolder = "C:\Path\To\Downloads\Journals\$FolderName\$SubFolderName"

$sourceFile = Join-Path -Path $sourceFolder -ChildPath "$FileName"
$destinationFile = Join-Path -Path $destinationFolder -ChildPath "$FileName"

if (Test-Path $sourceFile) {
    Move-Item -Path $sourceFile -Destination $destinationFile -Force
    Write-Host "File moved successfully from $($sourceFolder) to $($destinationFolder)."
} else {
    Write-Host "File not found in $($sourceFolder)."
}
