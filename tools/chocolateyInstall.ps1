$packageName = 'nvda'
$packageVersion = '2015.4'
$fileType = 'exe'
$url = "https://www.nvaccess.org/download/nvda/releases/$packageVersion/nvda_$packageVersion.exe"
$silentArgs = '--install'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url