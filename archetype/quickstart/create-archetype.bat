@echo off

REM
REM Vytvoří maven archetype v adresáři, kde skript spustíte, založí podadresář
REM s názvem v proměnné 'artifactID'. Skript předpokládá, že příkaz 'mvn' je spustitelný
REM a dohledatelný na PATH.
REM

REM
REM Cilem je buď získat dvě hodnoty z parametrů, nebo se na ně skript doptá sám. Hodnoty
REM groupID a artifactID jsou důležité a nesmí být NULOVE!
REM @see https://ss64.com/nt/if.html
REM
SET artifactID=%1
SET groupID=%2
IF [%1]==[] SET /P artifactID=Set artifactID value:
IF [%2]==[] SET /P groupID=Set groupId value: 
SET version=1.0.0-SNAPSHOT

ECHO ------------------------------------------------------
ECHO  CREATE archetype
ECHO ------------------------------------------------------
ECHO.
ECHO  Selected attributes:
ECHO.
ECHO   groupId:%groupID%
ECHO   artifactId:%artifactID%
ECHO   version:%version%
ECHO.
ECHO ------------------------------------------------------

mvn archetype:generate -DgroupId=%groupID% -DartifactId=%artifactID% -Dversion=%version% ^
-DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-archetype

:eof
