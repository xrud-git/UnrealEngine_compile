
# Compiling Unreal Engine and UE projects

## Compile Project

Windows Command Prompt / Shell on Linux
```
<<Unreal Build Tool>> <<Project name>> <<Platform name>> <<Configuration name>> <<path to .uproject file>>
```

Unreal Build Tool -- `<<UE>>\Engine\Binaries\DotNET\UnrealBuildTool.exe` / `<<UE>>\Engine\Build\BatchFiles\Build.bat` .

Platform names -- `Win64 Win32 <<[dev] ..>>` .

Configuration names -- `Development Shipping <<[dev] ..>>` .


## Compile Unreal Engine

Unreal Engine Source which can be downloaded trough Epic Games Launcher, with compiled version . Doesn't support compiling of itself .

Open the subfolder at here, which has name corresponding to the subject UE version, and run the init.cmd and then a `compile<<_>>` file .

### Uninstall

To remove traces of this package use, run deinit.cmd from relevant subfolder .
