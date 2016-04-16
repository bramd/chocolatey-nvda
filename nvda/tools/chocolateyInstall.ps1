$packageName = 'nvda'
$packageVersion = '2016.1'
$fileType = 'exe'
$url = "https://www.nvaccess.org/download/nvda/releases/$packageVersion/nvda_$packageVersion.exe"
$silentArgs = '--install-silent'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url