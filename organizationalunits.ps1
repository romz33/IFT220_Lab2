# brutforce script to make some organizational units

# you need to change "DC=ad,DC=dromines,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name DR_Computers -Path "DC=AD,DC=dromines,DC=lan" -Description "DR Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=DR_Computers,DC=AD,DC=dromines,DC=lan"
New-ADOrganizationalUnit -Name DR_Groups -Path "DC=AD,DC=dromines,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name ST_Privileged_Accounts -Path "DC=AD,DC=dromines,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name ST_Users -Path "DC=AD,DC=dromines,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=DR_Groups,DC=AD,DC=dromines,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=DR_Groups,DC=AD,DC=dromines,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=DR_Groups,DC=AD,DC=dromines,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=DR_Groups,DC=AD,DC=dromines,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=DR_Groups,DC=AD,DC=dromines,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=DR_Groups,DC=AD,DC=dromines,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=DR_Groups,DC=AD,DC=dromines,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
