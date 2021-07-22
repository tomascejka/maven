@echo off

REM
REM Vytvori podadresar se jmenem; kasli na diakritiku a mezery
REM

:INPUT_DIRNAME
SET /P dname=Set dirname value: 

call ..\quickstart\create-archetype.bat %dname%
copy ..\quickstart\modify-pom.bat .\%dname%
cd %dname%
call .\modify-pom.bat .
rm modify-pom.bat

:eof
