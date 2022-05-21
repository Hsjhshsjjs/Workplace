@echo off
:log
set pas=?
cls
color 17
echo passworld:
set /p pas=
< User\configs.set (
set /p password=
)
if not %pas% == %password% goto :elog
if %pas% == %password% goto :x
pause >nul
set "pas= 0"
ping localhost -n 1 >nul
goto :log
:elog
goto log
:x
cls
for /l %%a in (1,1,4) do for /l %%b in (1,1,4) do p\Insertbmp /p:"g\Load%%b.bmp" /x:440 /y:400 /z:100
p\CmdMenuSel f8%f0 "exit" "hello" "time" "music" "music2" "edit"
if %ERRORLEVEL% == 1 goto :yes
if %ERRORLEVEL% == 2 goto :w
if %ERRORLEVEL% == 3 goto :s
if %ERRORLEVEL% == 4 goto :p
if %ERRORLEVEL% == 5 goto :pp
if %ERRORLEVEL% == 6 goto :edit
goto x
:Yes
exit
:w
echo hello
pause
goto x
:s
echo %time%
pause
cls
goto x
:p
start ea
goto x
:pp
start so6
goto x
:edit
cls                                                                                                                                                                                        
echo New Passworld:
set /p pass=
set password=%pass%
(
echo %pass%
) >User\configs.set
goto :x