@echo off
REM �ж��ļ�����
set "str=%~n1"
SET type1=%~x1
SET type2=".plist"
REM �ļ�ȫ��Ϊ: %~nx1, �ļ���Ϊ�� %~n1, ��չ��Ϊ�� %~x1
if "%~x1" == "" (python unpack_plist.py -folder %~dp0%~nx1) else (python unpack_plist.py -plist %str% -png %str%)
pause
exit
