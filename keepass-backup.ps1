<### Script written by Aravind 
!!!!! Pre requisite: # schedule in task scheduler
Send your feedbacks to apcmakkadath@gmail.com
####>


echo on
$datef = Get-Date -Format "ddMMyyyyHHmmss"
Copy-Item "C:\your\file\location" "D:\your\backup\location-$datef.kdbx"
write-host "Backup run successfully"
