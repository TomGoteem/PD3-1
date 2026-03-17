$status = Get-MpComputerStatus
$danger = $false
if ($status.RealTimeProtectionEnabled -eq $false) { $danger = $true }
if ($status.QuickScanAge -gt 3) { $danger = $true }
if ($danger) { Write-Host "sistema ir apdraudeta!" -ForegroundColor Red } else { Write-Host "sistema ir drosa." -ForegroundColor Green }