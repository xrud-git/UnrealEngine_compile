
# Windows

Tested: #4.27.2-release Commit d94b38ae3446da52224bedd2568c078f828b4039 .

If you change Win SDK ( `Windows 10 SDK (<<..>>)` ) version, all Targets will be recompiled on next run .
* Also re-run GenerateProjectFiles.bat, for avoiding errors which otherwise you'll need to fix manually .

Ctrl + [C] may work for closing the compiler's Command Line window .

!!! But closing the window trough the button on titlebar, will make all Targets recompiled on next run .

Regular Expression for finding errors written to the log -- `(?<!InvalidConfiguration|CodeAnalysisTreatWarningsAs)error(?!s" skipped|" skipped|s.cpp|s.h|.h)` .

To rebuild certain parts (also for solving Precompiled Header version issues)
1. Delete `<<UE>>\Engine\Intermediate\Build\Win64\<<_>>` .
2. Run `compileUpdate_<<_>>.cmd` .
