$source = "$HOME/Documents/Errors.txt"
$dest = "Atskaite_$(Get-Date -Format 'yyyy-MM-dd').zip"
Compress-Archive -Path $source -DestinationPath $dest -Force
$size = (Get-Item $dest).Length / 1KB
Write-Host "Arhiva faila izmers: $size KB"