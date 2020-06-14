$ErrorActionPreference = 'Stop'
$filesDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" -replace "tools", "files"
gci -file "$filesDir\*.*" -r | select -expandproperty fullname | foreach {
  $path = $_ -replace [regex]::escape($filesDir), "C:\Windows"
  if (test-path "$path") {
    remove-item "$path" -force
  }
}
