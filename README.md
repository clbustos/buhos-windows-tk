# buhos-windows-tk
Windows toolkit to build [Buhos](https://github.com/clbustos/buhos) installer

Clone this repository, clone [Buhos source code](https://github.com/clbustos/buhos), install INNO Setup, using this dir structure

    /buhos
    /buhos-windows-tk

Run buhos_install.iss and you get a installer on windows_installer dir.

Internally, we use the Rakefile to clean the old gems and then build the installer.


