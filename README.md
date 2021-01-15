# Mobaxterm-web-telnet
The extra files needed to use MobaXTerm from a weblink for EVE-NG

When using EVE-NG, the web interface will try to open telnet links in the following format. telnet://x.x.x.x:yyyyy where x is IP and y is port.

I wanted to use MobaXterm and it does not accept this format.

With help from the following post we can get a work around:
https://stackoverflow.com/questions/62150858/how-to-use-mobaxterm-as-default-telnet-handler-in-eve-ng

The only extra step I had to take was make the bat file a exe file usnig free software 'bat to exe converter'.

The 3 files in this repo are the Registry key, the original bat file, and the exe converted from the bat.

