@echo off

REM
REM Vytvoří maven plugin v adresáři, kde skript spustíte, založí podadresář
REM s názvem v proměnné 'artifactID'. Skript předpokládá, že příkaz 'mvn' je spustitelný
REM a dohledatelný na PATH.
REM

REM
REM Cilem je buď získat dvě hodnoty z parametrů, nebo se na ně skript doptá sám. Hodnoty
REM groupID a artifactID jsou důležité a nesmí být NULOVE!
REM @see https://ss64.com/nt/if.html
REM

:CHOOSE_ARTIFACT_ID
ECHO -------------------------------------
ECHO  SELECT maven-archetype-artifact
ECHO -------------------------------------
ECHO.
ECHO  Achetype ID values:
ECHO.
ECHO  [1] maven-archetype-plugin, 
REM        see https://maven.apache.org/archetypes/maven-archetype-plugin/
ECHO  [2] maven-archetype-mojo, 
REM        see https://maven.apache.org/plugins-archives/maven-archetype-plugin-1.0-alpha-7/examples/mojo.html
ECHO.
REM  Next info, see:
REM    - https://maven.apache.org/guides/introduction/introduction-to-archetypes.html#provided-archetypes
ECHO -------------------------------------
SET /P choise=which archetype: 
SET case=CASE_%choise%
GOTO CASE_%choise%
:CASE_1
  SET archetypeArtifactId=maven-archetype-plugin
  GOTO CREATE_PROJECT
:CASE_2
  SET archetypeArtifactId=maven-archetype-mojo
  GOTO CREATE_PROJECT


:CREATE_PROJECT
IF [%archetypeArtifactId%]==[] (
	ECHO Value of 'archetypeArtifactId' not found, selected choise: %choise%
	GOTO CHOOSE_ARTIFACT_ID
)
SET artifactID=%1
SET groupID=%2
IF [%1]==[] SET /P artifactID= Set artifactID value:
IF [%2]==[] SET /P groupID= Set groupId value: 
SET version=1.0.0-SNAPSHOT
SET package=%groupID%.%artifactID%

ECHO -------------------------------------
ECHO  CREATE plugin
ECHO -------------------------------------
ECHO.
ECHO  Selected attributes:
ECHO.
ECHO   groupId:%groupID%
ECHO   artifactId:%artifactID%
ECHO   version:%version%
ECHO.
ECHO -------------------------------------
mvn archetype:generate -B -DgroupId=%groupID% -DartifactId=%artifactID% -Dversion=%version% -Dpackage=%package% ^
  -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-plugin

:eof
