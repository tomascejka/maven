@echo off

call mvn clean package 
call docker build -t cz.tc.test/testuj .
call docker run --rm -d -p 8080:8080 -p 8443:8443 --name testuj cz.tc.test/testuj