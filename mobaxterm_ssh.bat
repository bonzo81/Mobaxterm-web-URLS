@echo off

set var=%1
set extract=%var:~6,-1%
"C:\Program Files\PuTTY\putty.exe" %extract%

 cd C:\Program Files (x86)\Mobatek\MobaXterm
 MobaXterm.exe -newtab "ssh andyn%extract%"