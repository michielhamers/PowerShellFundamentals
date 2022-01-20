#Set-ExecutionPolicy -ExecutionPolicy
$RandomusersetCSV = Invoke-RestMethod "https://randomuser.me/api?inc=name,nat,email&results=3&format=csv"
$Randomuserset = $RandomusersetCSV | ConvertFrom-Csv 
$Randomuserset | Export-Csv -LiteralPath C:\code\PS1demo\users.csv -NoTypeInformation 
$Randomuserset
$Randomusersetcsv