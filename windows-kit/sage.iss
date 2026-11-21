[Setup]
AppName=Sage Programmers
AppVersion=1.0
AppPublisher=Sage Programmers
CreateAppDir=no
Uninstallable=no
PrivilegesRequired=lowest
OutputDir=Output
OutputBaseFilename=Sage-Programmers-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableReadyPage=yes

[Files]
Source: "install.ps1"; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "install-wrapper.cmd"; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "Sage.sideload.msix"; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "pwainstaller.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall

[Run]
Filename: "{cmd}"; Parameters: "/c install-wrapper.cmd"; WorkingDir: "{tmp}"; StatusMsg: "Installing Sage Programmers..."; Flags: waituntilterminated
