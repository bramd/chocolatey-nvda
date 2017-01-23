$packageName = 'nvda'
$packageVersion = '2016.4'
$fileType = 'exe'
$file = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\\nvda_$packageVersion.exe"
$silentArgs = '--install-silent'

Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file