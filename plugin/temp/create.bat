@echo off

REM
REM Predpoklada, ze Maven je nastaven na systemove PATH.
REM
REM @author tomas.cejka
REM

SET version=1.0.0-SNAPSHOT
SET artifactID=%1
SET groupID=%2
IF [%1]==[] SET /P artifactID=Set artifact id: 
IF [%2]==[] SET /P groupID=Set group id: 
SET package=%groupID%.%artifactID%
SET artifactID=%artifactID%-maven-plugin

REM vytvori maven projekt pro vytvoreni maven plugin-u, pommoci maven archetype nastroje
mvn archetype:generate -DgroupId=%groupID% -DartifactId=%artifactID% -Dversion=%version% -Dpackage=%package% ^
  -DarchetypeGroupId=org.apache.maven.archetypes ^
  -DarchetypeArtifactId=maven-archetype-plugin