$domainObj = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
$PDC = ($domainObj.PdcRoleOwner).Name
$SearchString = "LDAP://"
$SearchString += $PDC + "/"
$DistinguishedName = "DC=$($domainObj.Name.Replace('.', ',DC='))"
$SearchString += $DistinguishedName

$Searcher = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$SearchString)
$objDomain = New-Object System.DirectoryServices.DirectoryEntry
$Searcher.SearchRoot = $objDomain

$Searcher.filter = "samAccountType=805306368"
$Searcher.filter = "memberof=CN=Domain Admins,CN=Users,DC=corp,DC=com"

$Result = $Searcher.FindAll()

#double loop that will print each property on its own line
Write-Host "------------------------"
Foreach ($obj in $Result) {
    Foreach ($prop in $obj.Properties) {
        $prop.name
    }
}
Write-Host "------------------------"