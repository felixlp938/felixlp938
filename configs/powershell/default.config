#PLEASE COPY CONTENTS OF FILE 

#get management chars, path and more
$username = [Environment]::Username
$fs = [IO.Path]::DirectorySeparatorChar

if ($IsWindows) {
#####################################################################################
# Import the Chocolatey Profile that contains the necessary code to enable		
# tab-completions to function for `choco`.							
# Be aware that if you are missing these lines from your profile, tab completion	
# for `choco` will not function.									
# See https://ch0.co/tab-completion for details.						
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"		
if (Test-Path($ChocolateyProfile)) {								
  Import-Module "$ChocolateyProfile"								
}														
#####################################################################################
}

#Aliases
Set-Alias gg git-gui
Set-Alias g git
Set-Alias ll ls
Set-Alias .. back
Set-Alias tt timeTapler
Set-Alias src sourceDir
Set-Alias repo repoDir
Set-Alias fourofour delHistory
Set-Alias intelli intelliSense
Set-Alias c Clear-Host
Set-Alias motd startMsg
Set-Alias Set-Title changeTitle
Set-Alias Get-Title getTitle
Set-Alias Reset-Title titleReset
Set-Alias beer beerPath

#go back
function back {
  Set-Location ..
}

#go to beer
function beerPath {
  Set-Location $HOME$fs'source'$fs'repos'$fs'beer'
}

#go to timetapler
function timeTapler {
  Set-Location $HOME$fs'source'$fs'TimeTapler'
}

#go to source
function sourceDir {
  Set-Location $HOME$fs'source'
}

#go to source/repo
function repoDir {
  Set-Location $HOME$fs'source'$fs'repos'
}

#delete session history
function delHistory {
  Clear-History
}

#intellisense
function intelliSense {
  param ([string] $mode)
  
  if ($mode -eq "on") {
    Set-PSReadLineOption -PredictionSource HistoryAndPlugin
  } else {
    Set-PSReadLineOption -PredictionSource None
  }
}

#motd
function startMsg {
  Write-Host "PowerShell" $Host.Version
  Write-Host
  Write-Host "Welcome $username =)"
  Write-Host
  Write-Host "Your current powershell version is" 
  Write-Host $Host.Version -ForegroundColor Green
  Write-Host 
}

#change title
function changeTitle {
  param ([string] $title)
  $Host.UI.RawUI.WindowTitle = $title;
}

#reset title
function titleReset {
  $Host.UI.RawUI.WindowTitle = "Powershell " + $Host.Version
}

#get current title
function getTitle {
  Write-Host $Host.UI.RawUI.WindowTitle
}

#oh-my-posh init & motd
Clear-Host
oh-my-posh init pwsh --config $HOME$fs'AppData'$fs'Local'$fs'oh-my-posh'$fs'theme.omp.json' | Invoke-Expression
startMsg
titleReset
