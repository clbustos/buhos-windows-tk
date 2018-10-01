
  del /f /s /q ..\buhos_zip > nul
  rmdir /s /q ..\buhos_zip

git clone . ../buhos_zip
git clone ../buhos ../buhos_zip/lib/buhos
rmdir /s /q  ..\buhos_zip\windows_installer
rmdir /s /q ..\buhos_zip\.git
rmdir /s /q ..\buhos_zip\lib\buhos\.git
del ..\buhos_zip\*.rb
del ..\buhos_zip\*.xcf
del ..\buhos_zip\*.iss
del ..\buhos_zip\*.sh
del ..\buhos_zip\*.erb
del ..\buhos_zip\.gitattributes
del ..\buhos_zip\.gitignore
del ..\buhos_zip\Rakefile

