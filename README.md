# BTX
This is a modified version of venom aka password stealer with added capabilities of powershell makes it faster and also helps with evading antivirus programs.

This is a two stage exploit meaning it has to be staged because the number of caracters does not fit in run box in windows to make it one liner 

so what we're doing is we're adding a small powershell script in rubber ducky which will download our main powershell payload which we'd be hosting on our end with php 

payload we're going to be hosting is powershelltcponeline.ps1 which will give reverse connection to the attacker machine if we set up our listner correctly.
