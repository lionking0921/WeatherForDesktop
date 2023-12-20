@ echo off
%1 %2
ver|find "5.">nul&&goto :Admin
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :Admin","","runas",1)(window.close)&goto :eof
:Admin

schtasks /delete /tn weatherhook /f 

@ping 127.0.0.1 -n 2 >nul

rem start python TransFile.py
set d=%USERPROFILE%\Desktop
cd %d%
del ÌìÆø.lnk
rd /s /q c:\weather

pause



