@echo off
REM 判断文件类型
set "str=%~n1"
SET type1=%~x1
SET type2=".plist"
REM 文件全名为: %~nx1, 文件名为： %~n1, 扩展名为： %~x1
echo %str%
python unpack_plist.py -plist %str%%type2% -png %str%%type1%
pause
exit
