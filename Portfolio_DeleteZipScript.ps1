param (
    [Parameter(Mandatory = $true)]
    [string]$FolderName,
    
    [Parameter(Mandatory = $true)]
    [string]$ZipFileName
)


$ZipFolder = "C:\Path\To\Downloads\Portfolios\$FolderName"
$ExtractFolder = "C:\Path\To\Downloads\Portfolios\$FolderName"


# Construct the path of the zip file
$zipFilePath = Join-Path -Path $ZipFolder -ChildPath "$ZipFileName.ZIP"

if (Test-Path -Path $zipFilePath) {
    # Delete the zip file
    Remove-Item -Path $zipFilePath -Force
    Write-Host "Zip file '$ZipFileName.zip' deleted successfully from '$ZipFolder'."
} else {
    Write-Host "Zip file '$ZipFileName.zip' not found in '$ZipFolder'."
}
