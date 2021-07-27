@echo off

REM
REM Přepíše obsahy pom.xml souboru v projektu plugin-u; nejsnažší, jak si zajistit uptodate, co se týče
REM versí závislostí a popř. i pluginů pro vývoj.
REM
REM @author tomas.cejka
REM
REM @see https://developer.okta.com/blog/2019/09/23/tutorial-build-a-maven-plugin#add-maven-dependencies
REM

ECHO ----------------------------------------------------------------------------------------------------
ECHO  MODIFY pom.xml
ECHO ----------------------------------------------------------------------------------------------------
SET artifactID=%1
SET groupID=%2
IF [%1]==[] SET /P artifactID= Set artifactID value:
IF [%2]==[] SET /P groupID= Set groupId value: 
SET version=1.0.0-SNAPSHOT

SET JDK_VERSION=11
SET LOCATION_PROJECT=%1

(echo ^<?xml version="1.0" encoding="UTF-8"?^>
echo.
echo ^<project 
echo   xmlns="http://maven.apache.org/POM/4.0.0" 
echo   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
echo   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"^>
echo  ^<modelVersion^>4.0.0^</modelVersion^>
echo.
echo  ^<groupId^>%groupID%^</groupId^>
echo  ^<artifactId^>%artifactID%^</artifactId^>
echo  ^<version^>%version%^</version^>
echo  ^<packaging^>maven-plugin^</packaging^>
echo.
echo  ^<properties^>
echo    ^<maven.compiler.source^>%JDK_VERSION%^</maven.compiler.source^>
echo    ^<maven.compiler.target^>%JDK_VERSION%^</maven.compiler.target^>
echo    ^<project.build.sourceEncoding^>UTF-8^</project.build.sourceEncoding^>
echo    ^<project.reporting.outputEncoding^>UTF-8^</project.reporting.outputEncoding^>
echo    ^<maven.version^>3.8.1^</maven.version^>
echo  ^</properties^>
echo.
echo  ^<dependencies^>
echo    ^<^!-- plugin interfaces and base classes --^>
echo    ^<dependency^>
echo      ^<groupId^>org.apache.maven^</groupId^>
echo      ^<artifactId^>maven-plugin-api^</artifactId^>
echo      ^<version^>^$^{maven.version^}^</version^>
echo      ^<scope^>provided^</scope^>
echo    ^</dependency^>
echo    ^<^!-- needed when injecting the Maven Project into a plugin --^>
echo    ^<dependency^>
echo      ^<groupId^>org.apache.maven^</groupId^>
echo      ^<artifactId^>maven-core^</artifactId^>
echo      ^<version^>^$^{maven.version^}^</version^>
echo      ^<scope^>provided^</scope^>
echo    ^</dependency^>
echo    ^<^!-- annotations used to describe the plugin meta-data --^>
echo    ^<dependency^>
echo      ^<groupId^>org.apache.maven.plugin-tools^</groupId^>
echo      ^<artifactId^>maven-plugin-annotations^</artifactId^>
echo      ^<version^>3.6.1^</version^>
echo      ^<scope^>provided^</scope^>
echo    ^</dependency^>
echo    ^<^!-- testing --^>
echo    ^<dependency^>
echo      ^<groupId^>junit^</groupId^>
echo      ^<artifactId^>junit^</artifactId^>
echo      ^<version^>4.13.2^</version^>
echo      ^<scope^>test^</scope^>
echo    ^</dependency^>
echo    ^<dependency^>
echo      ^<groupId^>org.apache.maven^</groupId^>
echo      ^<artifactId^>maven-compat^</artifactId^>
echo      ^<version^>^$^{maven.version^}^</version^>
echo      ^<scope^>test^</scope^>
echo    ^</dependency^>
echo    ^<dependency^>
echo      ^<groupId^>org.apache.maven.plugin-testing^</groupId^>
echo      ^<artifactId^>maven-plugin-testing-harness^</artifactId^>
echo      ^<version^>3.3.0^</version^>
echo      ^<scope^>provided^</scope^>
echo    ^</dependency^>
echo  ^</dependencies^>
echo.
echo  ^<build^>
echo    ^<pluginManagement^>
echo      ^<plugins^>
echo        ^<plugin^>
echo          ^<groupId^>org.apache.maven.plugins^</groupId^>
echo          ^<artifactId^>maven-plugin-plugin^</artifactId^>
echo          ^<version^>3.6.1^</version^>
echo        ^</plugin^>
echo        ^<plugin^>
echo          ^<groupId^>org.apache.maven.plugins^</groupId^>
echo          ^<artifactId^>maven-site-plugin^</artifactId^>
echo          ^<version^>3.9.1^</version^>
echo        ^</plugin^>
echo      ^</plugins^>
echo    ^</pluginManagement^>
echo  ^</build^>
echo ^</project^>
echo.
) > %LOCATION_PROJECT%\pom.xml