# SSH & Telnet web URLs

## Background
This repo is to solve the problem of opening telnet or ssh links from a web interface on Windows.

When using Librenms it is possible to open ssh connection to a device from the WebUI, the format for these links is ssh://x.x.x.x.

For telnet connections with Librenms and EVE-NG, the web interface will try to open telnet links in the following format. telnet://x.x.x.x:yyyyy where x is IP and y is port (optional).

I wanted to use MobaXterm as my terminal, but it doesn't appear to recognise either of these formats from a URL (or I couldn't get it to work). 

>The following files use MobaxTerm as the terminal application. Both the reg file and bat file would need to be modified to use this with another terminal application. Watch for syntax change to call the program in line 10 of bat file.

Info in this repo is essentially based on the following post on stackoverflow. I've just tweaked it a little.
https://stackoverflow.com/questions/62150858/how-to-use-mobaxterm-as-default-telnet-handler-in-eve-ng

I placed all files within C:\Program Files\WebSSH-Telnet. If you put them somewhere else make sure to change the paths in the reg files.

## Telnet

I had to convert the bat file into a exe file because Windows complained about using a bat file. This is simplly done using free software 'bat to exe converter'. 

### Files for Telnet
* Start_MobaXterm.exe 
* win10_64bit_MobaXterm-telnet.reg

## SSH
Much like telnet URLs we can add a registry entry for ssh protocols. 
This blog gives a good overview of how to get Putty to open ssh:// URLs: 
https://johnsofteng.wordpress.com/2009/05/12/launch-putty-from-browser/

I have changed the bat files slightly. Firstly to ask for a username (ssh needs this unlike telnet). You could hardcode your username if you use the same one on all devices.

```
set var=Please enter you Username:
set /p USERID= %var%
```

Then it creates the ssh string to connect to the device in the format \<username\>@\<ip addresss\>. This is then used passed to Mobaxterm to start ssh session.

```
cd C:\Program Files (x86)\Mobatek\MobaXterm
MobaXterm.exe -newtab "ssh %USERID%@%IP_ADDR%"
```

If Windows complains about using a bat file then you can convert is to a exe using a simple tool. See telnet section. Also change the lines in the reg file from .bat to .exe

### Files for ssh
* win10_64bit_MobaXterm_SSH.reg 
* mobaxterm_ssh.bat


