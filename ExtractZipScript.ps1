param (
    [Parameter(Mandatory = $true)]
    [string]$FolderName,
    
    [Parameter(Mandatory = $true)]
    [string]$ZipFileName
)

$ZipFolder = "C:\Users\AberdourM.BG\Downloads\Extracts\$FolderName"
$ExtractFolder = "C:\Users\AberdourM.BG\Downloads\Extracts\$FolderName"


# Get the zip file with the specified name in the folder
$zipFile = Get-ChildItem -Path $ZipFolder -Filter "$ZipFileName.zip"

if ($zipFile) {
    # Create the extraction folder if it doesn't exist
    if (-not (Test-Path -Path $ExtractFolder)) {
        New-Item -ItemType Directory -Path $ExtractFolder | Out-Null
    }

    # Extract the zip file into the extraction folder
    $destinationPath = Join-Path -Path $ExtractFolder -ChildPath $ZipFileName
    Write-Host "Extracting $($zipFile.Name) to $($destinationPath)..."
    Expand-Archive -Path $zipFile.FullName -DestinationPath $destinationPath

    Write-Host "Extraction complete."
} else {
    Write-Host "No zip file found with the name $($ZipFileName).zip in $($ZipFolder)."
}
