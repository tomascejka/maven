@echo off

REM
REM Přepíše obsahy pom.xml souborů v archetypu a samotné šabloně
REM

SET JDK_VERSION=11
SET ARCHETYPE_VERSION=3.2.0
SET LOCATION_ARCHETYPE=%1
SET LOCATION_TEMPLATE=%LOCATION_ARCHETYPE%\src\main\resources\archetype-resources

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
echo  ^<packaging^>maven-archetype^</packaging^>
echo.
echo  ^<properties^>
echo    ^<maven.compiler.source^>%JDK_VERSION%^</maven.compiler.source^>
echo    ^<maven.compiler.target^>%JDK_VERSION%^</maven.compiler.target^>
echo    ^<project.build.sourceEncoding^>UTF-8^</project.build.sourceEncoding^>
echo    ^<project.reporting.outputEncoding^>UTF-8^</project.reporting.outputEncoding^>
echo  ^</properties^>
echo.
echo  ^<build^>
echo    ^<extensions^>
echo      ^<extension^>
echo        ^<groupId^>org.apache.maven.archetype^</groupId^>
echo        ^<artifactId^>archetype-packaging^</artifactId^>
echo        ^<version^>%ARCHETYPE_VERSION%^</version^>
echo      ^</extension^>
echo    ^</extensions^>
echo  ^</build^>
echo ^</project^>
) > %LOCATION_ARCHETYPE%\pom.xml

(echo ^<?xml version="1.0" encoding="UTF-8"?^>
echo.
echo ^<project 
echo   xmlns="http://maven.apache.org/POM/4.0.0" 
echo   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
echo   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"^>
echo  ^<modelVersion^>4.0.0^</modelVersion^>
echo.
echo  ^<groupId^>${groupId}^</groupId^>
echo  ^<artifactId^>${artifactId}^</artifactId^>
echo  ^<version^>${version}^</version^>
echo.
echo  ^<properties^>
echo    ^<maven.compiler.source^>%JDK_VERSION%^</maven.compiler.source^>
echo    ^<maven.compiler.target^>%JDK_VERSION%^</maven.compiler.target^>
echo    ^<project.build.sourceEncoding^>UTF-8^</project.build.sourceEncoding^>
echo  ^</properties^>
echo.
echo  ^<dependencies^>
echo     ^<dependency^>
echo       ^<groupId^>org.junit.jupiter^</groupId^>
echo       ^<artifactId^>junit-jupiter^</artifactId^>
echo       ^<version^>5.9.3^</version^>
echo       ^<scope^>test^</scope^>
echo     ^</dependency^>
echo  ^</dependencies^>
echo ^</project^>
) > %LOCATION_TEMPLATE%\pom.xml
