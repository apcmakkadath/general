Function Check-RunAsAdministrator {
  $CurrentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
  if($CurrentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator))
  {
       Write-host "Script is running with Administrator privileges!"
  }
  else
    {
       $ElevatedProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell";
       $ElevatedProcess.Arguments = "& '" + $script:MyInvocation.MyCommand.Path + "'"
       $ElevatedProcess.Verb = "runas"
       [System.Diagnostics.Process]::Start($ElevatedProcess)
       Exit
    }
}

Check-RunAsAdministrator

