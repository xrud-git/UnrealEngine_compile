@echo off
setLocal enableExtensions enableDelayedExpansion
for /f tokens^=1^,2* %%x in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop"') do (
	set "Desktop=%%z"
)

if "%h_sy_unrealEngine%" equ "" (init.cmd)


"%h_sy_microsoftVs%\MSBuild\Current\Bin\amd64\MSBuild.exe" "%h_sy_unrealEngine%\UE4.sln" /maxCpuCount /t:Build /p:Configuration="Development Editor" /p:Platform=Win64 /consoleLoggerParameters:ForceNoAlign;verbosity=normal /fileLogger1 /fileLoggerParameters1:Encoding=UTF-8;LogFile=!Desktop!\log_MSBuild.txt;verbosity=detailed

rem 
rem Verbosity
rem * q[|"uiet"], m[|"inimal"], n[|"ormal"] .
rem * diag[|"nostic"] -- d[|"etailed"] with Task IDs, and some time counts and timestamps .
rem 

echo(
pause


rem # Dev info
rem 
rem https://docs.microsoft.com/en-us/visualstudio/msbuild/how-to-build-incrementally?view=vs-2019
rem 
