$name=Read-host "Nombre de Equipo";
Connect-MicrosoftTeams;
$group = New-Team -DisplayName $name
Import-Csv .\usuarios.csv | ForEach-Object {
    Add-TeamUser -GroupId $group.GroupId -User $_.nombre
};
Disconnect-MicrosoftTeams
