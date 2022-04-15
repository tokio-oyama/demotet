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
