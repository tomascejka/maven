@echo off

REM
REM Vytvori podadresar se jmenem; kasli na diakritiku a mezery
REM

:INPUT_DIRNAME
ECHO ------------------------------------------------------
ECHO Create project (plugin)
ECHO ------------------------------------------------------
IF [%1]==[] SET /P artifactID= Set artifactID value:
IF [%2]==[] SET /P groupID= Set groupId value:

mkdir %artifactID%

call ..\quickstart\create-plugin.bat %artifactID% %groupID%
copy ..\quickstart\modify-pom.bat .\%artifactID%

cd %artifactID%
call .\modify-pom.bat . %groupID%
rm modify-pom.bat

:eof
