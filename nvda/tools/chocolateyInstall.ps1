$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'nvda'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageVersion = '2017.4'
$fileType = 'exe'
$fileLocation = Join-Path $toolsDir "nvda_"+$packageVersion+".exe"
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
  checksum      = '6AFBC331BD939B59A3D329EB5250B0D6E7C78F24116BF9968AEA0E9B8AAC9CDF'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512

  silentArgs   = '--install-silent'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs