#To run against a single server
$servers = "rdp1"
#Uncomment next line to run on a list of Servers
#$servers = get-content "c:\users\analyst1\desktop\servers.txt"
#Edit username as required
$username = 'administrator'
$CurrentSN=0
$NumberOfServers=$Servers.Count

ForEach ($Server in $Servers) {
Write-progress -activity "Checking RDP Sessions" -status "Querying $Server"-percentcomplete (($CurrentSN/$NumberOfServers)*100)
    
$session = ((quser /server:$server | ? {$_ -match $username}) -split ' +')[2]
logoff $session /server:$server
}
