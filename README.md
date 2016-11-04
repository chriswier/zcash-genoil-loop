# zcash-genoil-loop
ZCash Genoil miner loop batch script

This scripts were put together to address the auto-restart the genoil miner on a crash.  There are two pieces to this; a script (registry key) to disable Window's built-in error reporting (to disable the popup when the program crashes), and a loop batch script to launch the genoil miner. 

Usage:
 1.  Run (as Administrator) the disable-windows-errorui.bat script.  This sets on registry value (HKCU\Software\Microsoft\Windows\Windows  Error Reporting\DontShowUI = 1)
 2.  Modify the genoil-loop.bat script VARIABLES to meet your needs.  At minimum, modify the address variable so you are mining for your own address (although if you want to mine for me, go for it.)
 3.  Launch the genoil-loop.bat script to start mining.
