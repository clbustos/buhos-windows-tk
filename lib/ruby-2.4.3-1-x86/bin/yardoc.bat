@ECHO OFF































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































IF NOT "%~f0" == "~f0" GOTO :WinNT































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































@"%~dp0ruby.exe" "%~dp0yardoc" %1 %2 %3 %4 %5 %6 %7 %8 %9































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































GOTO :EOF































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































:WinNT































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































@"%~dp0ruby.exe" "%~dpn0" %*
