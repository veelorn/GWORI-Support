@echo off
title Suporte GWORI
chcp 437 >nul
color 0B
mode 45,35

:interface
cls
echo �������������������������������������������ͻ
echo �   MENU DE REPARO - SUPORTE AUTOMATIZADO   �
echo �       por GWORI Tech (Lucas Rezende)      �
echo �                  v1.2.0                   �
echo �۲��      @gworitech @rezenderenz          �
echo �������������������������������������������ͼ

echo.

echo    �����������������������������������Ŀ
echo    �1� Desligar PC Daqui 1 Hora        �
echo    �����������������������������������Ĵ
echo    �2� Desligar PC Daqui 2 Horas       �
echo    �����������������������������������Ĵ
echo    �3� Resolver PC com Lentid�o        �
echo    �����������������������������������Ĵ
echo    �4� Resolver Internet Lenta         �
echo    �����������������������������������Ĵ
echo    �5� Iniciar Reparo no PC  (Usar em  �
echo    � � caso de apresenta��o de erros)  �
echo    �����������������������������������Ĵ
echo    �6� Atualizar Computador            �
echo    �����������������������������������Ĵ
echo    �7� Ver Informa��es do Sistema      �
echo    �����������������������������������Ĵ
echo    �0� Sair                            �
echo    �������������������������������������

echo.
echo ���������������������������������������������      
choice /c 12345670 /n /m  "Digite a op��o desejada: " 
goto %errorlevel%


:1
shutdown /r /t 3600
echo Desligamento agendado para daqui 1 hora.
echo.
echo Pressione qualquer tecla para voltar...
echo.
pause >nul
goto interface

:2
shutdown /r /t 7200
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
echo.
echo.
echo Pressione qualquer tecla para voltar...
pause >nul 
goto interface

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