$packageName = 'nvda'
$packageVersion = '2016.4'
$fileType = 'exe'
$url = "https://www.nvaccess.org/download/nvda/releases/$packageVersion/nvda_$packageVersion.exe"
$silentArgs = '--install-silent'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url