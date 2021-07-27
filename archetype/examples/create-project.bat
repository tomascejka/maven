@echo off

REM
REM Vytvori podadresar se jmenem; kasli na diakritiku a mezery
REM

:INPUT_DIRNAME
ECHO ------------------------------------------------------
ECHO   Create project (archetype)
ECHO ------------------------------------------------------
IF [%1]==[] SET /P artifactID= Set artifactID value:
IF [%2]==[] SET /P groupID= Set groupId value:

mkdir %artifactID%

call ..\quickstart\create-archetype.bat %artifactID% %groupID%
copy ..\quickstart\modify-pom.bat .\%artifactID%

call .\modify-pom.bat %artifactID% %groupID%
rm %artifactID%\modify-pom.bat

pause
:eof
