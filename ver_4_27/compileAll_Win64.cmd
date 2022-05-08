@echo off
setLocal enableExtensions enableDelayedExpansion
for /f tokens^=1^,2* %%x in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop"') do (
	set "Desktop=%%z"
)

if "%h_sy_unrealEngine%" equ "" (init.cmd)


rem [dev Retarget Solution]

"%h_sy_microsoftVs%\MSBuild\Current\Bin\amd64\MSBuild.exe" "%h_sy_unrealEngine%\UE4.sln" /maxCpuCount /t:Rebuild /p:Configuration="Development Editor" /p:Platform=Win64 /consoleLoggerParameters:ForceNoAlign;verbosity=normal /fileLogger1 /fileLoggerParameters1:Encoding=UTF-8;LogFile=!Desktop!\log_MSBuild.txt;verbosity=detailed

rem 
rem [dev ?] `The Engine does not build by itself with the deprecation of PhysX, it requires the Chaos Plugin, which it can get from a project.`
rem 

echo(
pause


rem # Dev info
rem 
rem MSBUild Targets for Unreal Project -- https://docs.unrealengine.com/4.27/en-US/ProductionPipelines/BuildTools/UnrealBuildTool/TargetFiles/ .
rem 
