New-Item C:\Users\IEUser\AppData\Roaming\demotet\infected.txt
Set-Content C:\Users\IEUser\AppData\Roaming\demotet\infected.txt 'You have been Infected!'

$registryPath = "HKCU:\Software\Demotet\Scripts"
$Name = "D7AD9WD56DQS89DW7DSAHDUQAI"
$value = "1"

IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType DWORD -Force | Out-Null}

 ELSE {

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType DWORD -Force | Out-Null}
    
    
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' `

  -Argument '-NoProfile -WindowStyle Hidden -command "& {get-eventlog -logname Application -After ((get-date).AddDays(-1)) | Export-Csv -Path c:\users\IEUser\AppData\Roaming\Demotet\applog.csv -Force -NoTypeInformation}"'

$trigger =  New-ScheduledTaskTrigger -Daily -At 9am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DHO8DE6FDE4FE45SFD78GG" -Description "JG43KGJK834GF5KJ6"
