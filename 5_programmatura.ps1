$upd = winget upgrade | select -skip 3
$count = ($upd | where { $_ -match"\d" }).count
$upd
Write-Host "sistema ir $count programmas kuras vajag atjauninat."