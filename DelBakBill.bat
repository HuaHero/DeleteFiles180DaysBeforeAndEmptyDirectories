@echo off
REM ������������180��֮ǰ��F:\BillBak�ļ����еı��ݻ���ɾ��
rem FORFILES��Windows�Դ�������������;����÷�������ͨ��������������"FORFILES /?"��ѯ��

title "DelBakBill"

SET bilPath="F:\BillBak"

FORFILES /p %bilPath%   /s /d -180 /c "cmd /c del @file"

rem  ɾ�����ļ���
rem cd /d %~dp0
rem if not "%1" == "" cd /d %1
if not "%bilPath%" == "" cd /d %bilPath%
rem echo ��ǰĿ¼:%cd%

for /f "delims=" %%d in ('dir .\ /ad  /b /s ^|%SystemRoot%\System32\sort.exe /r') do rd "%%d"

