#Tome Tanaskovski
#Joel Bennett

Import-Module showui -WarningAction SilentlyContinue          


$User = [ordered]@{
   FirstName = "John"
   LastName = "Doe"
   BirthDate = [DateTime]
   UserName = "JDoe"
}

Get-Input $User -Show
