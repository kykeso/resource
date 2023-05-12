Write-Host "TBS Hostname renamer writen by: Enkhbold.T" `
  $name = Read-Host -Prompt "Enter New Computer Name" `
  wmic computersystem where name!=null call unjoindomainorworkgroup `
  sleep 10 `
  Rename-Computer -NewName $name `
  sleep 10 `
  add-computer -DomainName "tavanbogd.local" -Credential tavanbogd0\enkhbold.t -force -Options JoinWithNewName, AccountCreate `
  Restart-Computer -Confirm:$true
