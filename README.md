# zcash-genoil-loop
ZCash Genoil miner loop batch script

This batch scripts were put together to auto-restart the genoil miner on a crash in Windows.  There are two pieces to this; a script to disable Window's built-in error reporting (to disable the popup when the program crashes), and a loop batch script to launch the genoil miner. 

Usage:
 1.  Download the two batch files into your genoil-zec-miner directory. 
 2.  Run (as Administrator) the disable-windows-errorui.bat script.  This script sets a registry value to disable Windows' Built-in Error Reporting. (HKCU\Software\Microsoft\Windows\Windows Error Reporting\DontShowUI = 1)
 3.  Modify the genoil-loop.bat script VARIABLES to meet your needs.  At minimum, modify the address variable so you are mining for your own address (although if you want to mine for me, go for it.)
 4.  Launch the genoil-loop.bat script to start mining.

Donations are happily accepted.  

zcash: t1Qm5vxFNYGMsjr14FeeCBscmoj8otJAn9Y
eth: 0x22c9fbfaf079222166ba8e0a0d2f999185d29b65
btc: 39xd2nF33hV5K3vTF66B4bZaEkNz1itsB3
