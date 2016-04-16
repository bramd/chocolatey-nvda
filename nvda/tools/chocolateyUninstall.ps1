$packageName = "nvda"
$installerType = "exe"
# http://stackoverflow.com/a/31793042/2154182
if ("${env:ProgramFiles(x86)}") {
    $programFiles86 = "${env:ProgramFiles(x86)}"
} else {
    $programFiles86 = "${env:ProgramFiles}"
}

Uninstall-ChocolateyPackage $packageName $installerType "/S" "${programFiles86}\nvda\uninstall.exe"