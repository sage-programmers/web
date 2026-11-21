@echo off
cd /d "%~dp0"
set SED=%TEMP%\sage_build.sed
> "%SED%" echo [Version]
>> "%SED%" echo Class=IEXPRESS
>> "%SED%" echo SEDVersion=3
>> "%SED%" echo [Options]
>> "%SED%" echo PackagePurpose=InstallApp
>> "%SED%" echo ShowInstallProgramWindow=0
>> "%SED%" echo HideExtractAnimation=1
>> "%SED%" echo UseLongFileName=1
>> "%SED%" echo InsideCompressed=0
>> "%SED%" echo CAB_FixedSize=0
>> "%SED%" echo CAB_ResvCodeSigning=0
>> "%SED%" echo RebootMode=N
>> "%SED%" echo InstallPrompt=
>> "%SED%" echo DisplayLicense=
>> "%SED%" echo FinishMessage=
>> "%SED%" echo TargetName=%~dp0Sage-Programmers-Setup.exe
>> "%SED%" echo FriendlyName=Sage Programmers Setup
>> "%SED%" echo AppLaunched=cmd /c install-wrapper.cmd
>> "%SED%" echo PostInstallCmd=^<None^>
>> "%SED%" echo AdminQuietInstCmd=cmd /c install-wrapper.cmd
>> "%SED%" echo UserQuietInstCmd=cmd /c install-wrapper.cmd
>> "%SED%" echo SourceFiles=SourceFiles
>> "%SED%" echo [SourceFiles]
>> "%SED%" echo SourceFiles0=%~dp0
>> "%SED%" echo [SourceFiles0]
>> "%SED%" echo %%FILE0%%=
>> "%SED%" echo %%FILE1%%=
>> "%SED%" echo %%FILE2%%=
>> "%SED%" echo %%FILE3%%=
>> "%SED%" echo [Strings]
>> "%SED%" echo FILE0="install-wrapper.cmd"
>> "%SED%" echo FILE1="install.ps1"
>> "%SED%" echo FILE2="Sage.sideload.msix"
>> "%SED%" echo FILE3="pwainstaller.exe"
iexpress /N /Q "%SED%"
if exist "%~dp0Sage-Programmers-Setup.exe" (
  echo.
  echo Done. Your installer is: %~dp0Sage-Programmers-Setup.exe
) else (
  echo.
  echo Build failed. Make sure all files in this folder are extracted from the zip.
)
if not defined CI pause
