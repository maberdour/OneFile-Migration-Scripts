param (
    [Parameter(Mandatory = $true)]
    [string]$FolderName,

    [Parameter(Mandatory = $true)]
    [string]$SubFolderName,

    [Parameter(Mandatory = $true)]
    [string]$FileName

)


$FileName = "Learning Journal.html"
$JournalFiles = "Learning Journal_files"

$sourceFolder = "C:\Users\AberdourM.BG\Downloads"
$destinationFolder = "C:\Users\AberdourM.BG\Downloads\Journals\$FolderName\$SubFolderName"


$sourceFile = Join-Path -Path $sourceFolder -ChildPath "$FileName"
$destinationFile = Join-Path -Path $destinationFolder -ChildPath "$FileName"

if (Test-Path $sourceFile) {
    Move-Item -Path $sourceFile -Destination $destinationFile -Force
    Write-Host "File moved successfully from $($sourceFolder) to $($destinationFolder)."
} else {
    Write-Host "File not found in $($sourceFolder)."
}

$sourceFile = Join-Path -Path $sourceFolder -ChildPath "$JournalFiles"
$destinationFile = Join-Path -Path $destinationFolder -ChildPath "$JournalFiles"

if (Test-Path $sourceFile) {
    Move-Item -Path $sourceFile -Destination $destinationFile -Force
    Write-Host "Folder moved successfully from $($sourceFolder) to $($destinationFolder)."
} else {
    Write-Host "Folder not found in $($sourceFolder)."
}