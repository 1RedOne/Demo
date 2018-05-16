#OGV






Get-Service | Out-GridView -PassThru -Title "Pick Service to Restart" | Restart-service -WhatIf




#list of computers
"ComputerA","ComputerB","ComputerC" 

#pick a pc
#| out-gridview -PassThru -Title "Pick computer to restart services" 

#use Set-Service for remote systems
$PCs = "ComputerA","ComputerB","ComputerC"  | Out-GridView -title 'Restart Services: Pick Computers' -PassThru 

$services = Get-Service | Out-GridView -PassThru -Title 'Pick services to Start'

foreach ($PC in $PCs){
   $services | Set-Service -ComputerName $pc -WhatIf
}
