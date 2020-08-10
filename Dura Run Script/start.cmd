@echo off
:variables
set Version=1.5-dura
set InstallerVersion=1.9.6
set KiddionVersion=8.7
set DuraLog=C:/Menus/Clipox/%Version%/dura.log
set DebugLog=C:/Menus/Clipox/%Version%/debug.log
set KiddionLog=C:/Menus/Kiddion/%Version%/kiddion.log
goto :start-kiddion-check


:error
echo Dura: An error has occurred within this script. Please contact Golden_Kidd1803 on discord at Golden_Kidd1803#8445
echo Dura: An error has occurred within this script. Please contact Golden_Kidd1803 on discord at Golden_Kidd1803#8445 >> %DuraLog%
timeout /t 30 > NUL
exit


:start
echo Dura: Dura Version 1.2
echo Dura: Clipox Version %Version%
echo Dura: Installer Version %InstallerVersion%
timeout /t 0 > NUL
echo Dura: Start sequence initiated!
echo Dura: Please wait while everythings started!
echo Dura: Dura Version 1.2 >> %DuraLog%
echo Dura: Clipox Version %Version% >> %DuraLog%
echo Dura: Installer Version %InstallerVersion% >> %DuraLog%
echo Dura: Start sequence initiated! >> %DuraLog%
echo Dura: Please wait while everythings started! >> %DuraLog%
tasklist /FI "IMAGENAME eq GTA5.exe" 2>NUL | find /I /N "GTA5.exe">NUL
if "%ERRORLEVEL%"=="0" ( 
	goto :running
) else (
	goto :GTA5-Edition-Check 
)
goto :error


:started
timeout /t 1 > NUL
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds.
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds. >> %DuraLog%
timeout /t 100 > NUL
goto :running
goto :error


:started-2
timeout /t 1 > NUL
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 95 seconds.
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 95 seconds. >> %DuraLog%
timeout /t 95 > NUL
goto :running-2
goto :error


:started-3
timeout /t 1 > NUL
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds.
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds. >> %DuraLog%
timeout /t 100 > NUL
goto :running-3
goto :error


:running
cd C:/Menus/Clipox/%Version%/
echo Dura: Starting Clipox with Dura Injector.
echo Dura: Starting Clipox with Dura Injector. >> %DuraLog%
timeout /t 21 > NUL
echo Dura: Injecting Clipox %Version% into GTA5.exe >> %DuraLog%
timeout /t 1 > NUL
"Dura Injector.exe"
goto :complete
goto :error


:running-2
cd C:/Menus/Clipox/%Version%/
echo Dura: Starting Clipox with Dura Injector.
echo Dura: Starting Clipox with Dura Injector. >> %DuraLog%
echo Dura: Injecting Clipox %Version% into GTA5.exe >> %DuraLog%
timeout /t 1 > NUL
"Dura Injector.exe"
goto :complete
goto :error


:running-3
echo Dura: Boosting GTA V for steam
timeout /t 4 > NUL
wmic process where name="GTA5.exe" CALL setpriority "high priority" >> %DebugLog%
wmic process where name="Launcher.exe" CALL setpriority "idle" >> %DebugLog%
wmic process where name="PlayGTAV.exe" CALL setpriority "idle" >> %DebugLog%
wmic process where name="SocialClubHelper.exe" CALL setpriority "idle" >> %DebugLog%
wmic process where name="RockstarService.exe" CALL setpriority "idle" >> %DebugLog%
timeout /t 1 > NUL
cd C:/Menus/Clipox/%Version%/
echo Dura: Starting Clipox with Dura Injector.
echo Dura: Starting Clipox with Dura Injector. >> %DuraLog%
timeout /t 21 > NUL
echo Dura: Injecting Clipox %Version% into GTA5.exe >> %DuraLog%
timeout /t 1 > NUL
"Dura Injector.exe"
goto :complete
goto :error


:complete
echo Dura: Clipox has been injected into GTA V!
timeout /t 2 > NUL
echo Dura: Closing this window!
echo Dura: Clipox has been injected into GTA V! >> %DuraLog%
echo Dura: Closing this window! >> %DuraLog%
timeout /t 9 > NUL
exit
goto :error


:GTA5-Edition-Check-Failed
echo Dura: Unable to detect your Version of the game. Please contact Golden_Kidd1803 on discord at Golden_Kidd1803#8445
echo Dura: Unable to detect your Version of the game. Please contact Golden_Kidd1803 on discord at Golden_Kidd1803#8445 >> %DuraLog%
timeout /t 30 > NUL
exit
goto :error


:GTA5-Edition-Check
echo Dura: GTA V isn't started. Please wait while we detect your Version.
echo Dura: GTA V isn't started. Please wait while we detect your Version. >> %DuraLog%
timeout /t 0 > NUL
goto :SocialClub-Check
goto :error


:SocialClub-Check
echo Dura: Checking for SocialClub Version.
echo Dura: Checking for SocialClub Version. >> %DuraLog%
timeout /t 1 > NUL
cd "C:\Program Files\Rockstar Games\Grand Theft Auto V\"
if "%ERRORLEVEL%"=="0" ( 
	goto :SocialClub
) else (
	goto :Steam-Check
)
goto :error


:Steam-Check
echo Dura: Couldn't find the SocialClub Version.
echo Dura: Couldn't find the SocialClub Version. >> %DuraLog%
timeout /t 0 > NUL
echo Dura: Checking for Steam Version.
echo Dura: Checking for Steam Version. >> %DuraLog%
timeout /t 1 > NUL
cd "C:\Program Files (x86)\Steam\SteamApps\common\Grand Theft Auto V"
if "%ERRORLEVEL%"=="0" ( 
	goto :Steam-Boost
) else (
	goto :GTA5-Edition-Check-Failed
)
goto :error


:SocialClub
echo Dura: Detected SocialClub Version of GTA V. Would you like to use NoGTAVLauncher or use the Rockstar Launcher?
echo Dura: Select 1 to run Rockstar Launcher
echo Dura: Select 2 to run NoGTAVLauncher
echo Dura: Detected SocialClub Version of GTA V. Would you like to use NoGTAVLauncher or use the Rockstar Launcher? >> %DuraLog%
echo Dura: Select 1 to run Rockstar Launcher >> %DuraLog%
echo Dura: Select 2 to run NoGTAVLauncher >> %DuraLog%
set /p op=Dura: Enter your option then press enter:	
if "%op%"=="1" goto :SocialClub-1
if "%op%"=="2" goto :SocialClub-2
goto :error


:SocialClub-1
echo Dura: Enter your option then press enter:	1 >> %DuraLog%
echo Dura: Starting GTA V with Rockstar Launcher.
echo Dura: Starting GTA V with Rockstar Launcher. >> %DuraLog%
timeout /t 1 > NUL
start PlayGTAV.exe
goto :started
goto :error


:SocialClub-2
cd C:/Menus/Assets/Launchers/NoGTAVLauncher
echo Dura: Enter your option then press enter:	2 >> %DuraLog%
echo Dura: Starting GTA V with NoGTAVLauncher.
timeout /t 1 > NUL
"NoGTAVLauncher.exe" >> C:/Menus/Clipox/%Version%/NoGTAVLauncher-debug.log
echo Dura: Running GTA V with NoGTAVLauncher!
goto :started-2
goto :error


:Steam-Boost
echo Dura: Detected Steam Version of GTA V. Would you like to run at normal priority or high priority?
echo Dura: Select 1 to run at normal priority
echo Dura: Select 2 to run at high priority
echo Dura: Detected Steam Version of GTA V. Would you like to run at normal priority or high priority? >> %DuraLog%
echo Dura: Select 1 to run at normal priority >> %DuraLog%
echo Dura: Select 2 to run at high priority >> %DuraLog%
set /p op=Dura: Enter your option then press enter:	
if "%op%"=="1" goto :Steam-1
if "%op%"=="2" goto :Steam-2
goto :error


:Steam-1
echo Dura: Enter your option then press enter:	2 >> %DuraLog%
echo Dura: Starting GTA V at normal priority. >> %DuraLog%
timeout /t 1 > NUL
start steam://rungameid/271590
goto :started
goto :error


:Steam-2
timeout /t 1 > NUL
start steam://rungameid/271590
goto :started-3
goto :error


:start-k
echo Dura: Found Kiddion Modest Menu!
echo Dura: Starting main loader
timeout /t 3 > NUL
echo Dura: Dura Version 1.2
echo Dura: Clipox Version %Version%
echo Dura: Installer Version %InstallerVersion%
echo Dura: Kiddion Modest Menu Version: %KiddionVersion%
timeout /t 0 > NUL
echo Dura: Start sequence initiated!
echo Dura: Please wait while everythings started!
echo Dura: Found Kiddion Modest Menu! >> %DuraLog%
echo Dura: Starting main loader >> %DuraLog%
echo Dura: Dura Version 1.2 >> %DuraLog%
echo Dura: Clipox Version %Version% >> %DuraLog%
echo Dura: Installer Version %InstallerVersion% >> %DuraLog%
echo Dura: Kiddion Modest Menu Version: %KiddionVersion% >> %Duralog%
echo Dura: Start sequence initiated! >> %DuraLog%
echo Dura: Please wait while everythings started! >> %DuraLog%
tasklist /FI "IMAGENAME eq GTA5.exe" 2>NUL | find /I /N "GTA5.exe">NUL
if "%ERRORLEVEL%"=="0" ( 
	goto :running
) else (
	goto :GTA5-Edition-Check-k
)
goto :error


:started-k
timeout /t 1 > NUL
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds.
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds. >> %DuraLog%
timeout /t 100 > NUL
goto :running-k
goto :error


:started-2-k
timeout /t 1 > NUL
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 95 seconds.
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 95 seconds. >> %DuraLog%
timeout /t 95 > NUL
goto :running-2-k
goto :error


:started-3-k
timeout /t 1 > NUL
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds.
echo Dura: Please wait for the game to start. Once started please go to story mode. Menu will automatically inject in 100 seconds. >> %DuraLog%
timeout /t 100 > NUL
goto :running-3-k
goto :error


:running-k
cd C:/Menus/Clipox/%Version%/
echo Dura: Starting Clipox with Dura Injector.
echo Dura: Starting Clipox with Dura Injector. >> %DuraLog%
timeout /t 21 > NUL
echo Dura: Injecting Clipox %Version% into GTA5.exe >> %DuraLog%
timeout /t 1 > NUL
"Dura Injector.exe"
goto :StartKiddion
goto :error


:running-2=k
cd C:/Menus/Clipox/%Version%/
echo Dura: Starting Clipox with Dura Injector.
echo Dura: Starting Clipox with Dura Injector. >> %DuraLog%
echo Dura: Injecting Clipox %Version% into GTA5.exe >> %DuraLog%
timeout /t 1 > NUL
"Dura Injector.exe"
goto :StartKiddion
goto :error


:running-3-k
echo Dura: Boosting GTA V for steam
timeout /t 4 > NUL
wmic process where name="GTA5.exe" CALL setpriority "high priority" >> %DebugLog%
wmic process where name="Launcher.exe" CALL setpriority "idle" >> %DebugLog%
wmic process where name="PlayGTAV.exe" CALL setpriority "idle" >> %DebugLog%
wmic process where name="SocialClubHelper.exe" CALL setpriority "idle" >> %DebugLog%
wmic process where name="RockstarService.exe" CALL setpriority "idle" >> %DebugLog%
timeout /t 1 > NUL
cd C:/Menus/Clipox/%Version%/
echo Dura: Starting Clipox with Dura Injector.
echo Dura: Starting Clipox with Dura Injector. >> %DuraLog%
timeout /t 21 > NUL
echo Dura: Injecting Clipox %Version% into GTA5.exe >> %DuraLog%
timeout /t 1 > NUL
"Dura Injector.exe"
echo Dura: Clipox has been injected into GTA V!
echo Dura: Clipox has been injected into GTA V! >> %DuraLog%
timeout /t 2 > NUL
goto :StartKiddion
goto :error


:complete-k
echo Dura: Closing this window!
echo Dura: Closing this window! >> %DuraLog%
timeout /t 9 > NUL
exit
goto :error


:GTA5-Edition-Check-Failed-k
echo Dura: Unable to detect your Version of the game. Please contact Golden_Kidd1803 on discord at Golden_Kidd1803#8445
echo Dura: Unable to detect your Version of the game. Please contact Golden_Kidd1803 on discord at Golden_Kidd1803#8445 >> %DuraLog%
timeout /t 30 > NUL
exit
goto :error


:GTA5-Edition-Check-k
echo Dura: GTA V isn't started. Please wait while we detect your Version.
echo Dura: GTA V isn't started. Please wait while we detect your Version. >> %DuraLog%
timeout /t 0 > NUL
goto :SocialClub-Check-k
goto :error


:SocialClub-Check-k
echo Dura: Checking for SocialClub Version.
echo Dura: Checking for SocialClub Version. >> %DuraLog%
timeout /t 1 > NUL
cd "C:\Program Files\Rockstar Games\Grand Theft Auto V\"
if "%ERRORLEVEL%"=="0" ( 
	goto :SocialClub-k
) else (
	goto :Steam-Check-k
)
goto :error


:Steam-Check-k
echo Dura: Couldn't find the SocialClub Version.
echo Dura: Couldn't find the SocialClub Version. >> %DuraLog%
timeout /t 0 > NUL
echo Dura: Checking for Steam Version.
echo Dura: Checking for Steam Version. >> %DuraLog%
timeout /t 1 > NUL
cd "C:\Program Files (x86)\Steam\SteamApps\common\Grand Theft Auto V"
if "%ERRORLEVEL%"=="0" ( 
	goto :Steam-Boost
) else (
	goto :GTA5-Edition-Check-Failed-k
)
goto :error


:SocialClub-k
echo Dura: Detected SocialClub Version of GTA V. Would you like to use NoGTAVLauncher or use the Rockstar Launcher?
echo Dura: Select 1 to run Rockstar Launcher
echo Dura: Select 2 to run NoGTAVLauncher
echo Dura: Detected SocialClub Version of GTA V. Would you like to use NoGTAVLauncher or use the Rockstar Launcher? >> %DuraLog%
echo Dura: Select 1 to run Rockstar Launcher >> %DuraLog%
echo Dura: Select 2 to run NoGTAVLauncher >> %DuraLog%
set /p op=Dura: Enter your option then press enter:	
if "%op%"=="1" goto :SocialClub-1-k
if "%op%"=="2" goto :SocialClub-2-k
goto :error


:SocialClub-1-k
echo Dura: Enter your option then press enter:	1 >> %DuraLog%
echo Dura: Starting GTA V with Rockstar Launcher.
echo Dura: Starting GTA V with Rockstar Launcher. >> %DuraLog%
timeout /t 1 > NUL
start PlayGTAV.exe
goto :started-k
goto :error


:SocialClub-2-k
cd C:/Menus/Assets/Launchers/NoGTAVLauncher
echo Dura: Enter your option then press enter:	2 >> %DuraLog%
echo Dura: Starting GTA V with NoGTAVLauncher.
timeout /t 1 > NUL
"NoGTAVLauncher.exe" >> C:/Menus/Clipox/%Version%/NoGTAVLauncher-debug.log
echo Dura: Running GTA V with NoGTAVLauncher!
goto :started-2-k
goto :error


:Steam-Boost-k
echo Dura: Detected Steam Version of GTA V. Would you like to run at normal priority or high priority?
echo Dura: Select 1 to run at normal priority
echo Dura: Select 2 to run at high priority
echo Dura: Detected Steam Version of GTA V. Would you like to run at normal priority or high priority? >> %DuraLog%
echo Dura: Select 1 to run at normal priority >> %DuraLog%
echo Dura: Select 2 to run at high priority >> %DuraLog%
set /p op=Dura: Enter your option then press enter:	
if "%op%"=="1" goto :Steam-1-k
if "%op%"=="2" goto :Steam-2-k
goto :error


:Steam-1-k
echo Dura: Enter your option then press enter:	2 >> %DuraLog%
echo Dura: Starting GTA V at normal priority. >> %DuraLog%
timeout /t 1 > NUL
start steam://rungameid/271590
goto :started-k
goto :error


:Steam-2-k
timeout /t 1 > NUL
start steam://rungameid/271590
goto :started-3-k
goto :error


:start-kiddion-check
echo Dura: Checking for Kiddion Modest Menu.
echo Dura: Checking for Kiddion Modest Menu. >> %DuraLog%
cd "C:\Menus\Kiddion\%KiddionVersion%\"
if "%ERRORLEVEL%"=="0" ( 
	goto :start-k
) else (
	goto :start
)
goto :error


:StartKiddion
cd "C:\Menus\Kiddion\%KiddionVersion%\"
echo Dura: Starting Kiddion Modest Menu version V%KiddionVersion%
echo Dura: Starting Kiddion Modest Menu version V%KiddionVersion% >> %DuraLog%
echo Dura: Starting Kiddion Modest Menu version V%KiddionVersion% >> %KiddionLog%
start "modest-menu.exe"
echo Dura: Started Kiddion Modest Menu!
echo Dura: Started Kiddion Modest Menu! >> %DuraLog%
echo Dura: Started Kiddion Modest Menu! >> %KiddionLog%
goto :complete-k
goto :error
exit