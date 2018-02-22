#!/bin/bash
# Change according to local installation
INNO_SETUP_DIR="${HOME}/.wine/drive_c/Program Files (x86)/Inno Setup 5/ISCC.exe"

if [ ! -d "../buhos" ]; then
  git clone https://github.com/clbustos/buhos.git ../buhos
fi
  cd ../buhos
  git checkout win32
  git pull origin win32
  cd ../buhos-windows-tk

wine "${INNO_SETUP_DIR}" buhos_install.iss 
