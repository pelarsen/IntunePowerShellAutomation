New-Item -Path "HKCU:\Software\Microsoft\Internet Explorer\Spartan" –Force 
$registryPath = "HKCU:\Software\Microsoft\Internet Explorer\Spartan"

#Fix Edge on 1803 with WDAG or Applocker enabled
$Name = "RAC_LaunchFlags"
$value = "00000035"
IF(!(Test-Path $registryPath))
  {
    New-Item -Path $registryPath -Force | Out-Null
    New-ItemProperty -Path $registryPath -Name $name -Value $value `
    -PropertyType String -Force | Out-Null}
 ELSE {
    New-ItemProperty -Path $registryPath -Name $name -Value $value `
    -PropertyType String -Force | Out-Null}

