# maven wrapper install
Zde si ukazeme, jak zacit s maven wrapper, ale bez vsech kurdlinek

## Prerequsities
Musi existovat maven-based project (pokud ne, lze je vytvorit via ```maven archetype:generate```).

## Run
Je potreba dodrzet posloupnost techto kroku:
+ ```mvn archetype:generate```
+ ```cd .mvn```
+ ```echo "">settings.xml```
+ pak copy tento text do ```settings.xml```
+ ```
	<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">
	    <localRepository>${user.home}/.m2/repository</localRepository>
	    <interactiveMode>true</interactiveMode>
	    <offline>false</offline>
	</settings>
  ```
+ ```mkdir .m2```
+ ```mkdir .m2\repository```
+ pak uprav localRepository v ```settings.xml``` na hodnotu ```.m2\repository```
+ a ve finale spust ```mvn wrapper:wrapper -Dmaven="3.9.8" -Dtype=bin -s .mvn/settings.xml```
!!!NEZAPOMEN dat .m2\repository do .gitignore!!!

## Sources
+ https://www.baeldung.com/maven-settings-xml
+ https://maven.apache.org/wrapper/index.html
+ https://maven.apache.org/wrapper/maven-wrapper-plugin/usage.html
+ https://blog.jdriven.com/2023/04/mastering-maven-setting-default-maven-options-with-maven-config/