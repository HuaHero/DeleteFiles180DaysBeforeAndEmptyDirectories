@echo off
REM 功能描述：将180天之前的F:\BillBak文件夹中的备份话单删除
rem FORFILES是Windows自带命令，其参数含义和具体用法，可以通过在命令行输入"FORFILES /?"查询。

title "DelBakBill"

SET bilPath="F:\BillBak"

FORFILES /p %bilPath%   /s /d -180 /c "cmd /c del @file"

rem  删除空文件夹
rem cd /d %~dp0
rem if not "%1" == "" cd /d %1
if not "%bilPath%" == "" cd /d %bilPath%
rem echo 当前目录:%cd%

for /f "delims=" %%d in ('dir .\ /ad  /b /s ^|%SystemRoot%\System32\sort.exe /r') do rd "%%d"

