@echo off
setLocal enableDelayedExpansion


echo(
echo(Make setup described in "\storage\preinit.md"
echo(
pause


echo(
set "v_f=D:\storage\UnrealEngine-4.27.2-release"
echo(Default = !v_f!
echo(
set "v=" & set /p "v=Enter path to Unreal Engine, or press Enter for def: "
if "!v!" equ "" (set "v=!v_f!")

setx h_sy_unrealEngine "!v!"


echo(
set "v_f=D:\directories\microsoftVsBuildTools"
echo(Default = !v_f!
echo(
set "v=" & set /p "v=Enter path to Microsoft VS/Microsoft VS Build Tools, or press Enter for def: "
if "!v!" equ "" (set "v=!v_f!")

setx h_sy_microsoftVs "!v!"


echo(
echo(^^^!^^^!^^^! Read the "\README.md"


echo(
pause
