$ErrorActionPreference = 'Stop'
$filesDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" -replace "tools", "files"

if ([Environment]::OSVersion.version.major -ge 5 -and [Environment]::Is64BitOperatingSystem)
{
  robocopy "$filesDir" "C:\Windows\" /s /XX
  sc.exe create npf binPath=system32\drivers\npf.sys type=kernel start=auto error=normal tag=no DisplayName="WinPcap Packet Filter Driver"
  sc.exe start npf
}
else 
{
  throw "This package only supports Vista+ and 64bit Windows OS"
}
