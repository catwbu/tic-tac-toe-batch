@echo off 
mode con cols=18 lines=12
set version=1.0
set "zzz=  "
:top
set w12=0&set w13=0&set w14=0
set w15=0&set w17=0&set w19=0
set w23=0&set w25=0&set w28=0
set w35=0&set w36=0&set w37=0
set w39=0&set w45=0&set w46=0
set w47=0&set w56=0&set w57=0
set w58=0&set w59=0&set w69=0
set w78=0&set w79=0&set w89=0
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
echo      第%sad%回合:
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
set sxs=0
set cir=╳ 
if "%sad%"=="5" goto peace
if not "%sad%"=="1" goto normal
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
:peace
echo 平局
pause>nul
goto top
:normal
set /a sxs=sxs+1
if not "%num1%"=="%cir%" goto w28
if "%w12%"=="1" goto w14
if "%num1%"=="%num2%" (
if "%num3%"=="%zzz%" set w12=1&goto w3
)
:w14
if "%w14%"=="1" goto w15
if "%num1%"=="%num4%" (
if "%num7%"=="%zzz%" set w14=1&goto w7
)
:w15
if "%w15%"=="1" goto w17
if "%num1%"=="%num5%" (
if "%num9%"=="%zzz%" set w15=1&goto w9
)
:w17
if "%w17%"=="1" goto w19
if "%num1%"=="%num7%" (
if "%num4%"=="%zzz%" set w17=1&goto w4
)
:w19
if "%w19%"=="1" goto w13
if "%num1%"=="%num9%" (
if "%num5%"=="%zzz%" set w19=1&goto w5
)
:w13
if "%w13%"=="1" goto w28
if "%num1%"=="%num3%" (
if "%num2%"=="%zzz%" set w13=1&goto w2
)
:w28
if not "%num2%"=="%cir%" goto w36
if "%w28%"=="1" goto w25
if "%num2%"=="%num8%" (
if "%num5%"=="%zzz%" set w28=1&goto w5
)
:w25
if "%w25%"=="1" goto w23
if "%num2%"=="%num5%" (
if "%num8%"=="%zzz%" set w25=1&goto w8
)
:w23
if "%w23%"=="1" goto w36
if "%num2%"=="%num3%" (
if "%num1%"=="%zzz%" set w23=1&goto w1
)
:w36
if not "%num3%"=="%cir%" goto w47
if "%w36%"=="1" goto w35
if "%num3%"=="%num6%" (
if "%num9%"=="%zzz%" set w36=1&goto w9
)
:w35
if "%w35%"=="1" goto w37
if "%num3%"=="%num5%" (
if "%num7%"=="%zzz%" set w35=1&goto w7
)
:w37
if "%w37%"=="1" goto w39
if "%num3%"=="%num7%" (
if "%num5%"=="%zzz%" set w37=1&goto w5
)
:w39
if "%w39%"=="1" goto w47
if "%num3%"=="%num9%" (
if "%num6%"=="%zzz%" set w39=1&goto w6
)
:w47
if not "%num4%"=="%cir%" goto w56
if "%w47%"=="1" goto w45
if "%num4%"=="%num7%" (
if "%num1%"=="%zzz%" set w47=1&goto w1
)
:w45
if "%w45%"=="1" goto w46
if "%num4%"=="%num5%" (
if "%num6%"=="%zzz%" set w45=1&goto w6
)
:w46
if "%w46%"=="1" goto w56
if "%num4%"=="%num6%" (
if "%num5%"=="%zzz%" set w46=1&goto w5
)
:w56
if not "%num5%"=="%cir%" goto w69
if "%w56%"=="1" goto w57
if "%num5%"=="%num6%" (
if "%num4%"=="%zzz%" set w56=1&goto w4
)
:w57
if "%w57%"=="1" goto w58
if "%num5%"=="%num7%" (
if "%num3%"=="%zzz%" set w57=1&goto w3
)
:w58
if "%w58%"=="1" goto w59
if "%num5%"=="%num8%" (
if "%num2%"=="%zzz%" set w58=1&goto w2
)
:w59
if "%w59%"=="1" goto w69
if "%num5%"=="%num9%" (
if "%num1%"=="%zzz%" set w59=1&goto w1
)
:w69
if not "%num6%"=="%cir%" goto w78
if "%w69%"=="1" goto w78
if "%num6%"=="%num9%" (
if "%num3%"=="%zzz%" set w69=1&goto w3
)
:w78
if not "%num7%"=="%cir%" goto w89
if "%w78%"=="1" goto w79
if "%num7%"=="%num8%" (
if "%num9%"=="%zzz%" set w78=1&goto w9
)
:w79
if "%w79%"=="1" goto w89
if "%num7%"=="%num9%" (
if "%num8%"=="%zzz%" set w79=1&goto w8
)
:w89
if not "%num8%"=="%cir%" goto isme
if "%w89%"=="1" goto enter
if "%num8%"=="%num9%" (
if "%num7%"=="%zzz%" set w89=1&goto w7
)
:isme
if "%sxs%"=="1" set cir=○&goto normal
goto enter
:w1
set num1=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w2
set num2=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w3
set num3=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w4
set num4=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w5
set num5=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w6
set num6=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w7
set num7=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w8
set num8=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:w9
set num9=╳ &echo 電腦思考中....&timeout /t 1 /nobreak >nul&goto game
:enter
set /a n=%random%%%9+1
goto pop%n%
:pop1
if "%num1%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num1=╳ 
goto game
)
goto enter

:pop2
if "%num2%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num2=╳ 
goto game
)
goto enter

:pop3
if "%num3%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num3=╳ 
goto game
)
goto enter

:pop4
if "%num4%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num4=╳ 
goto game
)
goto enter

:pop5
if "%num5%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num5=╳ 
goto game
)
goto enter

:pop6
if "%num6%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num6=╳ 
goto game
)
goto enter

:pop7
if "%num7%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num7=╳ 
goto game
)
goto enter

:pop8
if "%num8%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num8=╳ 
goto game
)
goto enter

:pop9
if "%num9%"=="%ZZZ%" (
echo 電腦思考中....
timeout /t 1 /nobreak >nul
set num9=╳ 
goto game
)
goto enter
