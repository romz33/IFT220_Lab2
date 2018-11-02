# Run this after the machine reboot and check the output for errors
# Execuite this script in power shell when domains.ps1 and orginizationalunits.ps1 are complete. 

dcdiag
Get-Service adws,kdc,netlogon,dns
Get-smbshare


