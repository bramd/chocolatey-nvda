$packageName = 'nvda'
$packageVersion = '2017.4'
$fileType = 'exe'
$file = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\\nvda_$packageVersion.exe"
$silentArgs = '--install-silent'

Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file