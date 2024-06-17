@echo off 
set version=1.0
set "zzz=  "
:top
mode con cols=18 lines=12
set sad=0
set num1=%ZZZ%&set num2=%ZZZ%&set num3=%ZZZ%
set num4=%ZZZ%&set num5=%ZZZ%&set num6=%ZZZ%
set num7=%ZZZ%&set num8=%ZZZ%&set num9=%ZZZ%
:game
cls
echo Ver %version%
echo=
echo      第%round%回合:
echo    ＿╴＿╴＿
echo   │%num7%│%num8%│%num9%│
echo   ├──┼──┼──┤
echo   │%num4%│%num5%│%num6%│
echo   ├──┼──┼──┤
echo   │%num1%│%num2%│%num3%│
echo    ￣￣￣￣￣


if "%num1%"=="%num2%" (
 goto xxx1
) else (
 goto xxx2
)
:xxx1
if "%num2%"=="%num3%" (
 goto lose1
) else (
 goto xxx2
)
rem 二階判斷
:xxx2
if "%num9%"=="%num6%" (
 goto xxx3
) else (
 goto xxx4
)
:xxx3
if "%num6%"=="%num3%" (
 goto lose2
) else (
 goto xxx4
)
rem 三階判斷
:xxx4
if "%num1%"=="%num4%" (
 goto xxx5
) else (
 goto xxx6
)
:xxx5
if "%num4%"=="%num7%" (
 goto lose3
) else (
 goto xxx6
)
rem 四階判斷
:xxx6
if "%num2%"=="%num5%" (
 goto xxx7
) else (
 goto xxx8
)
:xxx7
if "%num5%"=="%num8%" (
 goto lose4
) else (
 goto xxx8
)
rem 五階判斷
:xxx8
if "%num4%"=="%num5%" (
 goto xxx9
) else (
 goto xxx10
)
:xxx9
if "%num5%"=="%num6%" (
 goto lose5
) else (
 goto xxx10
)
rem 六階判斷
:xxx10
if "%num7%"=="%num8%" (
 goto xxx11
) else (
 goto xxx12
)
:xxx11
if "%num8%"=="%num9%" (
 goto lose6
) else (
 goto xxx12
)
rem 七階判斷
:xxx12
if "%num7%"=="%num5%" (
 goto xxx13
) else (
 goto xxx14
)
:xxx13
if "%num5%"=="%num3%" (
 goto lose7
) else (
 goto xxx14
)
rem 八階判斷
:xxx14

if "%num9%"=="%num5%" (
 goto xxx15
) else (
 goto choice
)
:xxx15
if "%num5%"=="%num1%" (
 goto lose8
) else (
 goto choice
)
:lose1
if "%num3%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto xxx2

:lose2
if "%num3%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto xxx4
:lose3
if "%num7%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num7%"=="%ZZZ%" goto xxx6
:lose4
if "%num8%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num8%"=="%ZZZ%" goto xxx8
:lose5
if "%num6%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num6%"=="%ZZZ%" goto xxx10
:lose6
if "%num9%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num9%"=="%ZZZ%" goto xxx12
:lose7
if "%num3%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto xxx14
:lose8
if "%num1%"=="╳ " (
echo 你輸了...
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto choice

:choice
choice /c:123456789zxcasdqwe >nul

if errorlevel 18 goto 9
if errorlevel 17 goto 8
if errorlevel 16 goto 7
if errorlevel 15 goto 6
if errorlevel 14 goto 5
if errorlevel 13 goto 4
if errorlevel 12 goto 3
if errorlevel 11 goto 2
if errorlevel 10 goto 1
if errorlevel 9 goto 9
if errorlevel 8 goto 8
if errorlevel 7 goto 7
if errorlevel 6 goto 6
if errorlevel 5 goto 5
if errorlevel 4 goto 4
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1

:echo
cls
echo Ver %version%
echo=
echo      第%round%回合:
echo    ＿╴＿╴＿
echo   │%num7%│%num8%│%num9%│
echo   ├──┼──┼──┤
echo   │%num4%│%num5%│%num6%│
echo   ├──┼──┼──┤
echo   │%num1%│%num2%│%num3%│
echo    ￣￣￣￣￣
if "%num1%"=="%num2%" (
 goto ufc1
) else (
 goto ufc2
)
:ufc1

if "%num2%"=="%num3%" (
 goto win1
) else (
 goto ufc2
)
rem 二階判斷
:ufc2

if "%num9%"=="%num6%" (
 goto ufc3
) else (
 goto ufc4
)
:ufc3

if "%num6%"=="%num3%" (
 goto win2
) else (
 goto ufc4
)
rem 三階判斷
:ufc4

if "%num1%"=="%num4%" (
 goto ufc5
) else (
 goto ufc6
)
:ufc5

if "%num4%"=="%num7%" (
 goto win3
) else (
 goto ufc6
)
rem 四階判斷
:ufc6

if "%num2%"=="%num5%" (
 goto ufc7
) else (
 goto ufc8
)
:ufc7

if "%num5%"=="%num8%" (
 goto win4
) else (
 goto ufc8
)
rem 五階判斷
:ufc8

if "%num4%"=="%num5%" (
 goto ufc9
) else (
 goto ufc10
)
:ufc9

if "%num5%"=="%num6%" (
 goto win5
) else (
 goto ufc10
)
rem 六階判斷
:ufc10

if "%num7%"=="%num8%" (
 goto ufc11
) else (
 goto ufc12
)
:ufc11

if "%num8%"=="%num9%" (
 goto win6
) else (
 goto ufc12
)
rem 七階判斷
:ufc12

if "%num7%"=="%num5%" (
 goto ufc13
) else (
 goto ufc14
)
:ufc13

if "%num5%"=="%num3%" (
 goto win7
) else (
 goto ufc14
)
rem 八階判斷
:ufc14

if "%num9%"=="%num5%" (
 goto ufc15
) else (
 goto npc
)
:ufc15

if "%num5%"=="%num1%" (
 goto win8
) else (
 goto npc
)
:win1
if "%num3%"=="○" (
 echo 你贏了!
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto ufc2
:win2
if "%num3%"=="○" (
 echo 你贏了!
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto ufc4
:win3
if "%num7%"=="○" (
 echo 你贏了!
pause>nul
goto top )
if "%num7%"=="%ZZZ%" goto ufc6

:win4
if "%num8%"=="○" (
echo 你贏了!
pause>nul
goto top )
if "%num8%"=="%ZZZ%" goto ufc8
:win5
if "%num6%"=="○" (
echo 你贏了!
pause>nul
goto top )
if "%num6%"=="%ZZZ%" goto ufc10
:win6
if "%num9%"=="○" (
echo 你贏了!
pause>nul
goto top )
if "%num9%"=="%ZZZ%" goto ufc12
:win7
if "%num3%"=="○" (
echo 你贏了!
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto ufc14
:win8
if "%num1%"=="○" (
echo 你贏了!
pause>nul
goto top )
if "%num3%"=="%ZZZ%" goto npc
goto npc







:1
if "%num1%"=="%ZZZ%" (
set num1=○
set /a sad=sad+1
goto echo
)

goto game
:2
if "%num2%"=="%ZZZ%" (
set num2=○
set /a sad=sad+1
goto echo
)

goto game
:3
if "%num3%"=="%ZZZ%" (
set num3=○
set /a sad=sad+1
goto echo
)

goto game
:4
if "%num4%"=="%ZZZ%" (
set num4=○
set /a sad=sad+1
goto echo
)

goto game
:5
if "%num5%"=="%ZZZ%" (
set num5=○
set /a sad=sad+1
goto echo
)

goto game
:6
if "%num6%"=="%ZZZ%" (
set num6=○
set /a sad=sad+1
goto echo
)

goto game
:7
if "%num7%"=="%ZZZ%" (
set num7=○
set /a sad=sad+1
goto echo
)

goto game
:8
if "%num8%"=="%ZZZ%" (
set num8=○
set /a sad=sad+1
goto echo
)

goto game
:9
if "%num9%"=="%ZZZ%" (
set num9=○
set /a sad=sad+1
goto echo
)
goto game

:npc
if "%sad%"=="5" goto peace
set /a n=%random%%%9+1
goto check%n%
:check1
if "%num1%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num1=╳ 
goto game
)
goto npc

:check2
if "%num2%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num2=╳ 
goto game
)
goto npc

:check3
if "%num3%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num3=╳ 
goto game
)
goto npc

:check4
if "%num4%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num4=╳ 
goto game
)
goto npc

:check5
if "%num5%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num5=╳ 
goto game
)
goto npc

:check6
if "%num6%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num6=╳ 
goto game
)
goto npc

:check7
if "%num7%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num7=╳ 
goto game
)
goto npc

:check8
if "%num8%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num8=╳ 
goto game
)
goto npc

:check9
if "%num9%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num9=╳ 
goto game
)
goto npc

)
:peace
echo 平局
pause>nul
goto top
