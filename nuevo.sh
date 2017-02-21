#! /bin/bash


firefox
firefox  https://cran.itam.mx/bin/windows/base/R-3.3.2-win.exe
firefox  https://cran.itam.mx/bin/windows/base/R-3.3.2-win.exe
firefox  https://cran.itam.mx/bin/windows/base/R-3.3.2-win.exe


wmctrl -ic "$(wmctrl -l | grep 'Mozilla Firefox' | tail -1 | awk '{ print $1}')"


exit
