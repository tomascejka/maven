@echo off

REM
REM Spustí minimalisticky plugin. Skript předpokládá, že příkaz 'mvn' je spustitelný a dohledatelný na PATH.
REM
REM @author tomas.cejka
REM

SET /P groupID=Set groupId value: 
SET /P artifactID=Set artifactID value:
SET version=1.0.0-SNAPSHOT
SET /P mojo=Set mojo name: 

ECHO ------------------------------------------------------
ECHO  USE plugin
ECHO ------------------------------------------------------
ECHO.
ECHO  Selected attributes:
ECHO.
ECHO   groupId:%groupID%
ECHO   artifactId:%artifactID%
ECHO   version:%version%
ECHO   mojo:%mojo%
ECHO.
ECHO ------------------------------------------------------
REM @see https://maven.apache.org/guides/plugin/guide-java-plugin-development.html#executing-your-first-mojo
mvn %groupID%:%artifactID%:%version%:%mojo%

:eof
