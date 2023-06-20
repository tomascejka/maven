@echo off

SET LOCATION_ARCHETYPE=%1

(echo ^<?xml version="1.0" encoding="UTF-8"?^>
echo.
echo ^<archetype-descriptor
echo  xmlns="https://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.1.0"
echo  xmlns:xsi="https://www.w3.org/2001/XMLSchema-instance"
echo  xsi:schemaLocation="https://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.1.0 https://maven.apache.org/xsd/archetype-descriptor-1.1.0.xsd"
echo  name="custom-maven-archetype"^>
echo  ^<fileSets^>
echo    ^<fileSet filtered="true" packaged="true" encoding="UTF-8"^>
echo      ^<directory^>src/main/java^</directory^>
echo    ^</fileSet^>
echo    ^<fileSet filtered="true" packaged="true" encoding="UTF-8"^>
echo      ^<directory^>src/test/java^</directory^>
echo    ^</fileSet^>
echo    ^<fileSet filtered="true" encoding="UTF-8"^>
echo      ^<directory^>src/main/resources^</directory^>
echo    ^</fileSet^>
echo    ^<fileSet filtered="true" encoding="UTF-8"^>
echo      ^<directory^>src/main/webapp^</directory^>
echo    ^</fileSet^>
echo    ^<fileSet filtered="true" encoding="UTF-8"^>
echo      ^<directory^>^</directory^>
echo      ^<includes^>
echo        ^<include^>.gitignore^</include^>
echo        ^<include^>README.md^</include^>
echo        ^<include^>Dockerfile^</include^>
echo        ^<include^>server.xml^</include^>
echo        ^<include^>myScript.sh^</include^>
echo      ^</includes^>
echo    ^</fileSet^>
echo  ^</fileSets^>
echo ^</archetype-descriptor^>
) > %LOCATION_ARCHETYPE%\src\main\resources\META-INF\maven\archetype-metadata.xml