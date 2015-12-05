@echo off
color c
rem //Server Related {{{
:serverList
color c
echo =====Server List=====
echo 1 - 194.56.09.1
echo 2 - 133.4.52.101 /Closed/
echo 3 - 42.199.3.62 /Closed/
SET /P serverSel=Please Select A Server: 
if %serverSel%==194.56.09.1 GOTO ServerOne
if %serverSel%==133.4.52.101 GOTO serverList
if %serverSel%==42.199.3.62 GOTO serverList
if %serverSel%==debug GOTO serverListDebug
echo That server does not exist!
goto serverList
exit 

rem //ServerListDebug
:serverListDebug
cls
color 1b
SET /P SLDebugCmds=Debug Command?: 
if %SLDebugCmds%==return GOTO serverList && cls
if %SLDebugCmds%==rawlist GOTO SLRawList
if %SLDebugCmds%==shutdownall GOTO SLShutdownAll
if %SLDebugCmds%==openserverlist GOTO serverList
echo That Command Does Not Exist!
goto serverListDebug
cls
exit

rem //Raw Server List
:SLRawList
echo =============================
echo 1 - 194.56.09.1 @ Mainframe Server
echo 2 - 133.4.52.101 @ /No Function/
echo 3 - 42.199.3.62 @ Backup Server
echo =============================
pause
goto serverListDebug
exit

rem //ShutdownCommand
:SLShutdownAll
SET /P SDCmd=Password?: 
if %SDCmd%==SysteX142 GOTO serverListShutdown && cls
echo Password is incorrect!
goto SLShutdownAll
exit

rem //serverListShutdown
:serverListShutdown
color c
echo =====Server List=====
echo 1 - /Shutdown Server List/
echo 2 - /Shutdown Server List/
echo 3 - /Shutdown Server List/
SET /P serverSelSD=Please Select A Server: 
if %serverSelSD%==debug GOTO serverListDebug
echo /All Server's Are Shutdown/
goto serverListShutdown 
exit

rem }}} //End Of Serverlist

rem //Server One {
:Serverone
cls
color 1b
SET /P S1Driver=What Driver Do You Want To Use? (A, B, D, E, G, X): 
if %S1Driver%==A GOTO S1A
if %S1Driver%==B GOTO S1B
if %S1Driver%==C GOTO AdminpanelS1C
if %S1Driver%==D GOTO CheckDiskS1D
if %S1Driver%==E GOTO S1E
if %S1Driver%==G GOTO S1G
if %S1Driver%==X GOTO AdminpanelRecoveryS1X
cls
echo That driver does not exist or you didn't use a CAPITAL letter!
goto ServerOne
exit

rem //S1A
:S1A
SET /P S1ACmds=A: 
if %S1ACmds%==reload GOTO S1A
if %S1ACmds%==driveinfo GOTO S1ADriveInfo
if %S1ACmds%==cls cls
if %S1ACmds%==when(chain.sector==attk).showIP/all GOTO chainSector
echo That Command Doesn't Exist!
goto S1A
cls
exit

:chainSector
echo ========================
echo Password is required
echo ========================
SET /P chPass=Password?: 
if %chPass%==DDoSBeta goto chainSector2
exit

:chainSector2
echo ========================
echo 
:S1ADriveInfo
echo "A" Drive Is Used To Add Users And File Storage, It is also used for the main hardware system

:S1B
cls
SET /P S1BCmds=B: 
if %S1BCmds%==reload GOTO S1B
echo That Command Doesn't Exist!
goto S1B
cls
exit

:S1E
cls
SET /P S1ECmds=E: 
if %S1ECmds%==reload GOTO S1E
echo That Command Doesn't Exist!
goto S1E
cls
exit

:S1G
cls
SET /P S1GCmds=G: 
if %S1GCmds%==reload GOTO S1G
echo That Command Doesn't Exist!
goto S1G
cls
exit
