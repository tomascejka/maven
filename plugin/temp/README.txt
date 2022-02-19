Maven plugin - howtos

* vytvoril jsem plugin takto: viz. https://maven.apache.org/guides/plugin/guide-java-plugin-development.html#mojo-archetype

mvn archetype:generate ^
  -DgroupId=cz.styrax.plugins ^
  -DartifactId=sdxapi-maven-plugin ^
  -Dversion=1.0.0-SNAPSHOT ^
  -Dpackage=cz.styrax.plugin.sdxapi
  -DarchetypeGroupId=org.apache.maven.archetypes ^
  -DarchetypeArtifactId=maven-archetype-plugin
--

nebo lze pouzit

mvn archetype:generate ^
  -DgroupId=cz.styrax.plugins ^
  -DartifactId=sdxapi-maven-plugin-V2 ^
  -Dversion=0.0.1-SNAPSHOT ^
  -Dpackage=cz.styrax.plugin.sdxapi ^
  -DarchetypeGroupId=org.apache.maven.archetypes ^ 
  -DarchetypeArtifactId=maven-archetype-mojo
--

maven plugin pro sdx.api
1. krok je sehnat WSDL
  - online via http URL
  - localne via file PATH

* rozdelit praci na prikazy
  - napr. core by mohl umet
      - nahrat WSDL/XSD (online/file)
      - zparsovat WSDL/XSD, tzn spustit jenom cfx.plugin pro WSDL
      - atd.
--