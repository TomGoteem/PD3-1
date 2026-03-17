$errors = Get-EventLog -LogName System -EntryType Error -After (Get-Date).AddDays(-7)
$path = "$HOME\Documents\Errors.txt"
if ($errors.count -gt 10) { $msg = "[KRITISKI] Sistema ir nestabila!"} else { $msg =  "[OK] Kludu limenis normals."}
Write-Host $msg
$errors |Select-Object TimeGenerated, Message | Out-File $path -Append