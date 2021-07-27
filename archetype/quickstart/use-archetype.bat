@echo off

REM
REM Vygeneruje maven projekt v adresáři ze šablony (archetype) z lokálního repositáře. Kde skript spustíte, založí podadresář
REM s názvem v proměnné 'artifactID'. Skript předpokládá, že příkaz 'mvn' je spustitelný a dohledatelný na PATH.
REM @author tomas.cejka
REM

SET artifactID=%1
SET groupID=%2
SET version=1.0.0-SNAPSHOT
IF[%1]==[] SET /P artifactID=Set artifactID value:
IF[%2]==[] SET /P groupID=Set groupId value:
REM Je mozne: internal, local, remote; lze pouzivat vice volbe oddelene carkou, napr: remote,local
SET catalog=local

ECHO ------------------------------------------------------
ECHO  GENERATE project
ECHO ------------------------------------------------------
ECHO.
ECHO  Selected attributes:
ECHO.
ECHO   groupId:%groupID%
ECHO   artifactId:%artifactID%
ECHO   version:%version%
ECHO.
ECHO ------------------------------------------------------

mvn archetype:generate -DarchetypeCatalog=%catalog% ^
-DgroupId=%groupID% -DartifactId=%artifactID% -Dversion=%version%

:eof
