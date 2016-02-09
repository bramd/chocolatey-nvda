$packageName = "nvda"
$installerType = "exe"

Uninstall-ChocolateyPackage $packageName $installerType "/S" "${env:ProgramFiles(x86)}\nvda\uninstall.exe"