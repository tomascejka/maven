@echo off

call mvn clean package 
call docker build -t ${groupId}/${artifactId} .
call docker run --rm -d -p 8080:8080 -p 8443:8443 --name ${artifactId} ${groupId}/${artifactId}