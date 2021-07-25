# Maven Plugin - rychlý start
Plugin je vlastnost [maven-u](https://maven.apache.org/index.html), díky níž je možné si obohatit chování a vlastnosti již existujícího maven projektu. Pro nastudování základů doporučuji [studijní dokument](../STUDY.md).

Postup zde uvedený "zaobalým" do batch skriptů a to pouze pro ulehčení práce. Doporučuji však nahlédnout do skriptů (spouštějí pouze ```mvn``` příkaz s různými skladbami parametrů).

## Vytvoření pluginu
Vytvořte si adresář, do něj nakopírujte ```create-plugin.bat```. Spusťte skript bez parametrů a budete dotázán na dva parametry:```groupId``` a ```artifactId``` (základní atributy [maven projektu](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html).

```
create-plugin.bat
```

... nebo můžete definovat (pakliže znáte ```groupId``` a ```artifactId```) skript takto:
```
create-plugin.bat your-artifactId your-groupId
```


### Doplnění aktuálních versí
Základní archetypy [maven](https://maven.org) pro pluginy nejsou aktualizovány a je nutné si verse (pluginů, závislostí) v nich uvedené povýšit sám - pomocí tohoto skriptu, kterému je nutné předat cestu k archetypu. Doporučuji si obsah skriptu ```modify-pom.bat``` projít a případné verse (pluginů, závislostí) doplnit/změnit sám.

```
modify-pom.bat your-artifactId
``` 

## Instalace pluginu
Pro použití pluginu je nutné jej instalovat do lokálního repositáře a to klasickým příkazem:

```
mvn clean install
```
V tuto chvíli je plugin dostupný v lokálním repositáři a je možné používát pro reálné projekty (viz. použití pluginu níže).

## Použití pluginu
Lze použít jednoduchý příkaz, kterým si plugin (resp. jeho "mojo" příkaz) vyzkoušíte a to spuštěním skriptu níže (spouští plugin bez parametrů (parametry -D si do skriptu popř. dodejte dle potřeby)):


```shell
use-plugin.bat
```

Ve finále to zkouší spustit takovýto příkaz (abstraktně, [zdroj](https://maven.apache.org/guides/plugin/guide-java-plugin-development.html#executing-your-first-mojo)):

```shell
mvn groupId:artifactId:version:goal
```


## Další
* [Maven - hlavní stránka](https://github.com/tomascejka/java/tree/main/maven)
* [Maven Archetype](https://github.com/tomascejka/java/tree/main/maven/archetype)

## Zdroje
* [Tutorial Build a Maven Plugin](https://developer.okta.com/blog/2019/09/23/tutorial-build-a-maven-plugin)
* [Maven plugin](https://www.baeldung.com/maven-plugin)
* [How to write Own Maven Plugin](https://blogs.oracle.com/javamagazine/how-to-write-your-own-maven-plugins)
* [Writing custom Maven Plugin](https://books.sonatype.com/mvnref-book/reference/writing-plugins-sect-custom-plugin.html)
