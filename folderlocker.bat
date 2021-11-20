cls
@ECHO OFF
title Folder Private
:: maked by aryan14001 
:again
for /F "tokens=*" %%a in ('type 888th2.txt') do set passs2=%%a
if NOT EXIST log-08002B30309D.txt goto MDLOGER
if NOT EXIST 888th2.txt goto pasworder
:start
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo what do you want?
echo for hide folder type hide
set/p "cho=>"
if %cho%==hide goto LOCK
if %cho%==Hide goto LOCK
if %cho%==h goto LOCK
if %cho%==H goto LOCK
if %cho%==newpass goto newpass
if %cho%==log %passs2% (
start log-08002B30309D.txt
goto End
)
if %cho%==clean %passs2%(
echo are you sure (y,n)
set/p "cho56=>"
if %cho56%==y (
del 888th2.txt
del log-08002B30309D.txt
goto end
)
if %cho56%==n goto end
)
if %cho%==logreset %passs2% (
attrib -h -s  log-08002B30309D.txt
del log-08002B30309D.txt
echo [%time% %date%] >>log-08002B30309D.txt
echo log reseted >>log-08002B30309D.txt
attrib +h +s log-08002B30309D.txt
goto End
)
echo Invalid choice.
goto CONFIRM
:LOCK
rename Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
echo [%time% %date%] >>log-08002B30309D.txt
echo Folder locked >>log-08002B30309D.txt
goto End
:UNLOCK
echo Enter password to unlock folder
set/p "pass=>"
if NOT %pass%==%passs2% goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully
echo [%time% %date%] >>log-08002B30309D.txt
echo Folder Unlocked successfully >>log-08002B30309D.txt
goto End
:FAIL
echo Invalid password
echo %passs2%
echo [%time% %date%] >>log-08002B30309D.txt
echo Invalid password "%pass%" >>log-08002B30309D.txt
goto end
:MDLOCKER
md Private
echo Private created successfully
echo [%time% %date%] >>log-08002B30309D.txt
echo Private created successfully >>log-08002B30309D.txt
goto End
:MDLOGER
type nul >log-08002B30309D.txt
attrib +h +s log-08002B30309D.txt
goto start
:newpass
echo Type old password
set/p "oldpass2=>"
if %oldpass2%==%passs2% (
echo Type new password
set /p "new=>"
attrib -h -s 888th2.txt 
echo %new% >888th2.txt
attrib +h +s 888th2.txt
echo password changed "%new%".
echo [%time% %date%] >>log-08002B30309D.txt
echo password changed "%passs2%" =^> "%new%" >>log-08002B30309D.txt
goto end
) ELSE (
pause
echo Invalid oldpass.
echo [%time% %date%] >>log-08002B30309D.txt
echo Invalid oldpass "%oldpass2%" >>log-08002B30309D.txt
gotoend
)
:pasworder
cls
echo pasword not detected
echo Type new password
set/p "new=>"
echo nul >888th2
attrib -h -s 888th2.txt 
echo %new% >888th2.txt
attrib +h +s 888th2.txt
echo password changed "%new%".
echo [%time% %date%] >>log-08002B30309D.txt
echo password changed "%passs2%" =^> "%new%" >>log-08002B30309D.txt
goto again
:End
pause