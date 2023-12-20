@ echo off
%1 %2
ver|find "5.">nul&&goto :Admin
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :Admin","","runas",1)(window.close)&goto :eof
:Admin



schtasks /create /tn weatherhook /xml C:\weather\install\weatherhook.xml
echo on
 
exit


