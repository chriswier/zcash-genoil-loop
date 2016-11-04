@echo off
:: loop-genoil.bat - a launch script for genoil zcash mining
:: Author: Chris Wieringa  chris@wieringafamily.com
:: Donation addresses:
::   zcash: t1Qm5vxFNYGMsjr14FeeCBscmoj8otJAn9Y
::   eth: 0x22c9fbfaf079222166ba8e0a0d2f999185d29b65
::   btc: 39xd2nF33hV5K3vTF66B4bZaEkNz1itsB3
::
:: NOTE:  This script was written for flypool's ZCASH pool.  flypool uses an <address>.<rigname> system for username,
::   so the VARIABLES below assume this.  If you do not want to do this, overwrite the username variable.
::
:: HOWTO: Modify the variables below (compname defaults to local system name)  
::
:: For genoil options, I'd recommend leaving the "-f 2" flags intact so the program exits on error for auto-restart.

:: ##### VARIABLES - START #####
:: create the username from the combination of the <address>.<computername>
set address=t1Qm5vxFNYGMsjr14FeeCBscmoj8otJAn9Y
set compname=%COMPUTERNAME%
:: genoil -u option
set username=%address%.%compname%
:: genoil -p option
set password=z
:: genoil -c option
set pool=us1-zcash.flypool.org:3333
:: genoil misc options    
set genoiloptions=-f 2                
:: ###### VARIABLES - END #####

:: ## LOOP - START ## 
set /a loopnum=0
:loopname
echo Loop number - %loopnum%
set /a loopnum=%loopnum%+1
genoil.exe -c %pool% -u %username% -p %password% %genoiloptions%
timeout /t 5
if %loopnum% NEQ 1000 goto loopname
:: ## LOOP - END ##
exit