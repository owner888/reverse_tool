@echo off
TITLE AndroidKiller_v1.3.1�Զ�ADB��������ģ�������� by �ᰮ��̳ ��ҹ�ǳ�2012

color 3f 

:MENU
CLS
@ ECHO.
@ ECHO =================================================
@ ECHO ����:https://www.52pojie.cn/
@ ECHO.
@ ECHO =================================================
@ ECHO.
@ ECHO ���½��Զ���ʼͨ��ADB������������ģ����
@ ECHO.
@ ECHO ��ȷ���Ƿ��Ѿ���AKĿ¼��bin\adb�ļ����е�3���ļ����Ƶ�����ģ����Ŀ¼
@ ECHO.
@ ECHO ��ȷ������ģ�����İ�װ·����C:\Program Files\BluestacksCN
@ ECHO.
@ ECHO ��ȷ��C:\Program Files\BluestacksCN\Engine\ProgramFilesĿ¼����HD-ADB.exe�ļ�
@ ECHO.
@ ECHO ��Ϣ��ȫһ�£��밴Y �� �س�������
@ ECHO.
@ ECHO ��Ϣ��һ�£��밴N �� �س����رմ��ڣ��޸ı��������ļ�����������
@ ECHO.
@ ECHO =================================================

:CHO
set choice=
set /p choice= ѡ����Ҫ���еĲ���:
IF NOT "%Choice%"=="" SET Choice=%Choice:~0,1%
if /i "%choice%"=="Y" goto 1
if /i "%choice%"=="N" goto 2
echo ѡ����Ч������������
echo.
goto MENU

:1
CLS
COLOR E0
ECHO. =================================================
echo.
echo   ���ڲ����У�������ɺ�������رմ���
echo.
ECHO. =================================================
@ taskkill /im adb.exe /f 

>nul 2>nul �Ϸ������������ǽ���adb���̣������޸�

@ taskkill /im hd-adb.exe /f

>nul 2>nul �Ϸ������������ǽ���hd-adb���̣��������������ģ�������еģ�����ģ����Ӧ��û�У������޸�

@ cd /d C:\Program Files\BluestacksCN\Engine\ProgramFiles 

>nul 2>nul �Ϸ�����������Ǹı䵱ǰĿ¼hd-adb.exe���ڵ�C:\Program Files\BluestacksCN\Engine\ProgramFilesĿ¼��������Ĭ��Ŀ¼�������������Ŀ¼��һ�����밴ʵ��·���޸�����ĺ�벿��

@ hd-adb connect 127.0.0.1��5555 

>nul 2>nul �Ϸ����������������hd-adb.exe���̣���ͨ��5555�˿ڽ������ӣ�������5555Ĭ��adb�˿ڣ�����ģ�����������޸Ķ�Ӧ�Ķ˿ں�

CLS
COLOR 3f
CLS
@echo �Ѵ������ 
ECHO. =================================================
echo.
echo   ������ɣ���������رմ���
echo.
ECHO. =================================================

pause

:2
CLS
COLOR E0
echo ***************************************************************************
echo *                                                                         *
echo *                                                                         *
echo *                        �����رմ���                                     *
echo *                                                                         *
echo *                                                                         *
echo *                                                                         *
echo ***************************************************************************

pause 
