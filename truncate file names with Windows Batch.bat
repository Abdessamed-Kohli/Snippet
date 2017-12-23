

get-childitem *.mp3 | foreach { rename-item $_ $_.Name.Replace("Radiohead -", "") }

Rename/truncate file names with Windows Batch January 26, 2013
http://minhou-tech.webtegration.com/blog/2013/01/26/renametruncate-file-names-with-windows-batch/

@echo off
setlocal enabledelayedexpansion
set deletestring=access_
for /f "delims==" %%F in ('dir /b ^| find "%deletestring%"') do (
set oldfilename=%%F
set newfilename=!oldfilename:%deletestring%=!
Ren "!oldfilename!" "!newfilename!"
)
ren 20*.log ex*.log
