@echo off
title Suporte GWORI
chcp 437 >nul
color 0B
mode 45,35

:interface
cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo º   MENU DE REPARO - SUPORTE AUTOMATIZADO   º
echo º       por GWORI Tech (Lucas Rezende)      º
echo º                  v1.2.0 Û²±°              º
echo º                @gworitech                 º
echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

echo.

echo    ÚÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo    ³1³ Desligar PC Daqui 1 Hora        ³
echo    ÃÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo    ³2³ Desligar PC Daqui 2 Horas       ³
echo    ÃÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo    ³3³ Resolver PC com Lentid„o        ³
echo    ÃÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo    ³4³ Resolver Internet Lenta         ³
echo    ÃÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo    ³5³ Iniciar Reparo no PC  (Usar em  ³
echo    ³ ³ caso de apresenta‡„o de erros)  ³
echo    ÃÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo    ³6³ Atualizar Computador            ³
echo    ÃÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo    ³7³ Ver Informa‡”es do Sistema      ³
echo    ÃÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo    ³0³ Sair                            ³
echo    ÀÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

echo.
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ      
choice /c 12345670 /n /m  "Digite a op‡„o desejada: " 
goto %errorlevel%


:1
shutdown /s /t 3600
echo Desligamento agendado para daqui 1 hora.
echo.
echo Pressione qualquer tecla para voltar...
echo.
pause >nul
goto interface

:2
shutdown /s /t 7200
echo Desligamento agendado para daqui 2 horas.
echo.
echo Pressione qualquer tecla para voltar...
echo.
pause >nul
goto interface

:3
del /s /q %temp%\*
del /s /q C:Windows\Temp\*
echo.
echo.
echo Pressione qualquer tecla para voltar...
pause >nul 
goto interface

:4
ipconfig /flushdns
netsh winsock reset
shutdown /r /t 10
echo.
pause >nul 

:5
sfc /scannow
echo.
echo.
echo Pressione qualquer tecla para voltar...
pause >nul 
goto interface

:6
start ms-settings:windowsupdate
echo.
echo.
echo Pressione qualquer tecla para voltar...
pause >nul 
goto interface

:7
msinfo32
goto interface

:0
exit

:fim
echo.
echo. 
echo Pressione qualquer tecla para fechar...
pause >nul
echo.

exit
