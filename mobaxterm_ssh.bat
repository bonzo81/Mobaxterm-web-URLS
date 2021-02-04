@echo off

set var=%1
set IP_ADDR=%var:~6,-1%

set var=Please enter you Username:
set /p USERID= %var%

 cd C:\Program Files (x86)\Mobatek\MobaXterm
 MobaXterm.exe -newtab "ssh %USERID%%IP_ADDR%"