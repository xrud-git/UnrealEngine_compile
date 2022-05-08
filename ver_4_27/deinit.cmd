@echo off
setLocal enableDelayedExpansion


rem //# Elevate if wasn't
for /f usebackq^ tokens^=*^ delims^=^ eol^= %%x in (`powerShell -ExecutionPolicy RemoteSigned -Command ""%~dp0\assets\f_ElevateFile.ps1" "%~f0" %*"`) do (
	set "v_f=%%x"
	if "!v_f:~0,1!" equ "1" (
		
		for /f usebackq^ tokens^=*^ delims^=^ eol^= %%x in (`reg query "HKCU\Environment" /v h_sy_unrealEngine`) do (
			if "%%x" neq "" (
				reg delete "HKCU\Environment" /f /v h_sy_unrealEngine
			)
			goto :eof
		)
		
	) else (
		
		for /f usebackq^ tokens^=*^ delims^=^ eol^= %%x in (`reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v h_sy_unrealEngine`) do (
			if "%%x" neq "" (
				reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /v h_sy_unrealEngine
			)
			goto EnvironmentVariables_end
		)
		
	)
)
:EnvironmentVariables_end


echo(
pause
