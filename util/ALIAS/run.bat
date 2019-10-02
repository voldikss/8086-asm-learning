@echo off

masm %1.asm
if not errorlevel 1 link %1.obj
%1.exe
