# schedule in tasak scheduler
echo on
$datef = Get-Date -Format "ddMMyyyyHHmmss"
Copy-Item "C:\your\file\location" "D:\your\backup\location-$datef.kdbx"
write-host "Backup run successfully"
