$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'nvda'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageVersion = '2018.2'
$fileType = 'exe'
$fileName = "nvda_$($packageVersion).exe"
$fileLocation = Join-Path $toolsDir $fileName
$silentArgs = '--install-silent'


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file         = $fileLocation

  softwareName  = 'NVDA' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  # Checksums are now required as of 0.10.0.
  # To determine checksums, you can get that from the original site if provided. 
  # You can also use checksum.exe (choco install checksum) and use it 
  # e.g. checksum -t sha256 -f path\to\file
  checksum      = 'BB38126596DE23F47347C2F6FCB14AA6F6677327C4E6BCECF33CA405FE8D5E8E'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512

  silentArgs   = '--install-silent'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs