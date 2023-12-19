### Read and encrypt data
$password = Read-Host -AsSecureString 
$encrypted = ConvertFrom-SecureString $password
$encrypted | out-file -FilePath "lrapikey.encrypted" -Force


### Read and decrypt encrypted data
$encrypteddata = Get-Content "lrapikey.encrypted"
$passwordsecure = ConvertTo-SecureString $encrypteddata
$plainpassword = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($passwordsecure))


### Display plain and encrypted data
Write-Output "################################"
Write-Output "Encrypted password is $encrypted"
Write-Output "################################"
Write-Output "Plain password is $plainpassword"