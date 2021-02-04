# Mobaxterm-web-URLs

## Background
The extra files needed to use MobaXTerm from a weblink for EVE-NG or any web page if needed. 

When using EVE-NG, the web interface will try to open telnet links in the following format. telnet://x.x.x.x:yyyyy where x is IP and y is port.

I wanted to use MobaXterm and it does not accept this format from a URL.

## Telnet
With help from the following post we can get a work around:
https://stackoverflow.com/questions/62150858/how-to-use-mobaxterm-as-default-telnet-handler-in-eve-ng

The only extra step I had to take was convert the bat file into a exe file usnig free software 'bat to exe converter'. This was because windows complalined about it being a bat file.

### Files for Telnet
Start_MobaXterm.exe
win10_64bit_MobaXterm.reg

## SSH
Much like telnet URLs we can add a registry entry for ssh protocols. 
This blog gives a good overview of how to get Putty to open ssh:// URLs: 
https://johnsofteng.wordpress.com/2009/05/12/launch-putty-from-browser/

I have changed to bat files slightly to firstly ask for a username (ssh needs this unlike telnet apparently). Then it create the ssh string to connect to the device in the format <username>@<ip addresss>. This is then used to open with Mobaxterm.
  
For some reason I didn't need to convert this bat to exe.

### Files for ssh
win10_64bit_MobaXterm_SSH.reg
mobaxterm_ssh.bat

I placed the files within C:\Program Files\EVE-NG. If you put them somewhere else make sure to change the path in the bat files.
