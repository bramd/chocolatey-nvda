# Chocolatey package for NVDA

## Releasing a new version

1. Download the new version, usually found on a URL like: http://www.nvaccess.org/download/nvda/releases/2018.1/nvda_2018.1.exe
1. Put the downloaded file in nvda/tools and remove the old installer
1. Update all version references in nvda/nvda.nuspec (version, release notes etc)
1. Follow the instructions in nvda/tools/verification.txt and calculate the new file hash
1. Update nvda/tools/verification.txt and nvda/tools/chocolateyInstall.ps1 with the new hash
1. Use cpack to create your package as usual
1. Test your package and either submit a pull request to this repo or commit to master directly if you have commit access
1. Update the package on chocolatey.org if you have access to the package