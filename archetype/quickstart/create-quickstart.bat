@echo off

SET /P groupID=Set groupId value: 
SET /P artifactID=Set artifactID value: 
SET /P package=Set package value: 

mvn archetype:generate ^
	-DgroupId=%groupID% -DartifactId=%artifactID% -Dversion=1.0.0-SNAPSHOT -Dpackage=%package% ^
	-DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart