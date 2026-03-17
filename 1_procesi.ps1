Get-Date
Get-Service wuauserv
Get-Process | select -first 5
Get-PSDrive -PSProvider FileSystem
Test-Connection 8.8.8.8 -count 1
Get-NetIPAddress -AddressFamily IPv4
Clear-DnsClientCache
Get-EventLog System -Newest 5
Write-Host "Top 5 procesu total RAM: $(((Get-Process | Sort-Object WorkingSet -Descending | select -first 5 | Measure-Object WorkingSet -Sum).Sum / 1MB))"
