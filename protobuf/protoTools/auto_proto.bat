@echo off
for %%i in (%*) do python protoLua.py %%~ni%~x1
pause