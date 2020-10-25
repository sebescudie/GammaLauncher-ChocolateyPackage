$ErrorActionPreference = 'Stop';

$url = 'https://github.com/sebescudie/GammaLauncher/releases/download/3.3.0/gammalauncher_3.3.0.7z'
$pp = Get-PackageParameters

if(!$pp.InstallationPath) { $pp.InstallationPath = "$env:SystemDrive\tools"}
$toolsDir   = $pp.InstallationPath

$packageArgs = @{
  packageName   = 'gammalauncher'
  unzipLocation = $toolsDir
  url           = $url
  
  softwareName  = 'gammalauncher*'

  checksum      = 'F899C467497C97B4A81010ADA4FAD672316373DB29041B566090EACC8EEEA887'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs