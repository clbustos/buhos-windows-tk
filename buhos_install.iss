; -- Buhos Installer.iss --
; -- Icon: https://www.iconfinder.com/icons/416387/big_bird_eyes_night_owl_vision_wild_icon#size=24 ;
[Setup]
AppName=Buhos
AppVersion=1.0.0v1
DefaultDirName={pf}\Buhos
AppContact=Departamento de Psicologia, Universidad de Concepcion
AppCopyright=Copyright (C) 2018 Claudio Bustos Navarrete
DefaultGroupName=Buhos
UninstallDisplayIcon={app}\owl.ico
Compression=lzma2
SolidCompression=yes
OutputDir=output
OutputBaseFilename=Buhos
[Dirs]
Name: "{app}\lib\buhos\"; Permissions: users-full
Name: "{app}\lib\buhos\log"; Permissions: users-full
Name: "{app}\lib\buhos\usr"; Permissions: users-full

[Files]
Source: "owl.ico"; DestDir: "{app}"
Source: "buhos.bat"; DestDir: "{app}"
Source: "..\buhos\*"; DestDir: "{app}\lib\buhos"; Excludes: ".*,log,*.sqlite,installed, docker-compose.yml,Dockerfile"; Flags: recursesubdirs
Source: "lib\ruby-2.4.3-1-x86\*"; DestDir: "{app}\lib\ruby-2.4.3-1-x86"; Excludes: ".*,share\doc, *\ri\*, 2.4.0\cache, doc\bundler-1.16.1\*"; Flags: recursesubdirs

[Icons]
Name: "{group}\Buhos"; Filename: "{app}\buhos.bat" ; WorkingDir:"{app}\lib\buhos"; IconFilename: "{app}\owl.ico"

[Run]
Filename: "{app}\buhos.bat"; Description: "Launch application"; Flags: postinstall nowait skipifsilent unchecked
