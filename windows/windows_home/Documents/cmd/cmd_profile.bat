@echo off

REM This profile is not automatically loaded, but in your terminal settings you
REM can launch cmd like this:
REM cmd.exe /K "%USERPROFILE%\Documents\cmd\cmd_profile.bat"

REM Make core utils like find/grep available.
set PATH=C:\Program Files\Git\usr\bin\;%PATH%

doskey g=git $*
