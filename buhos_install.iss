; -- Buhos Installer.iss --
#define MyAppName "Buhos"
#define MyAppExeName "buhos.bat"
[Setup]
AppName=Buhos
AppVersion=1.0.0-beta15
DefaultDirName={pf}\Buhos
AppContact=Departamento de Psicologia, Universidad de Concepcion
AppCopyright=Copyright (C) 2016-2018 Claudio Bustos Navarrete
DefaultGroupName=Buhos
UninstallDisplayIcon={app}\buhos.ico
Compression=lzma2
SolidCompression=yes
OutputDir=windows_installer
OutputBaseFilename=Buhos-1.0.0-beta15
LicenseFile=LICENSE.txt
[Dirs]
Name: "{app}\lib\buhos\"; Permissions: users-full
Name: "{app}\lib\buhos\log"; Permissions: users-full
Name: "{app}\lib\buhos\usr"; Permissions: users-full

[Files]
Source: "buhos.ico"; DestDir: "{app}"
Source: "{#MyAppExeName}"; DestDir: "{app}"
Source: "..\buhos\*"; DestDir: "{app}\lib\buhos"; Excludes: ".*,log,db.sqlite,installed, docker-compose.yml,Dockerfile, usr\*"; Flags: recursesubdirs
Source: "lib\ruby-2.4.3-1-x86\*"; DestDir: "{app}\lib\ruby-2.4.3-1-x86"; Excludes: ".*,share\doc, *\ri\*, 2.4.0\cache, doc\bundler-1.16.1\*, *.html"; Flags: recursesubdirs

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; \
    GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}" ; WorkingDir:"{app}\lib\buhos"; IconFilename: "{app}\buhos.ico"
Name: "{group}\{#MyAppName}\Guide Resources"; Filename: "{app}\lib\buhos\docs\guide_resources"; Comment: "Resources for completion of guide"
Name: "{group}\{#MyAppName}\Manuals"; Filename: "{app}\lib\buhos\docs\manual"; Comment: "Manual for Buhos"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; \
    IconFilename: "{app}\buhos.ico"; Tasks: desktopicon
[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch application"; Flags: postinstall nowait skipifsilent unchecked
