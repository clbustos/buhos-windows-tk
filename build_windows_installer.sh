#!/bin/bash
# Change according to local installation
INNO_SETUP_DIR="${HOME}/.wine/drive_c/Program Files (x86)/Inno Setup 5/ISCC.exe"

wine "${INNO_SETUP_DIR}" buhos_install.iss 
