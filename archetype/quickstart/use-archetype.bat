@echo off

REM
REM Vygeneruje maven projekt v adresáři ze šablony (archetype) z lokálního repositáře. Kde skript spustíte, založí podadresář
REM s názvem v proměnné 'artifactID'. Skript předpokládá, že příkaz 'mvn' je spustitelný a dohledatelný na PATH.
REM

SET /P groupID=Set groupId value: 
SET /P artifactID=Set artifactID value:
SET version=1.0.0-SNAPSHOT
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
