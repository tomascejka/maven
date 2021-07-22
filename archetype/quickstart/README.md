# Maven Archetype - rychlý start
Archetype je vlastnost [maven-u](https://maven.apache.org/index.html), díky níž je možné si předpřipravit projekty jako šablony a generovat z nich základny pro reálné projekty. Zde si vytvoříme základní a jednoduchý [maven archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html). Pro nastudování základů doporučuji [studijní dokument](../STUDY.md).

Postup zde uvedený "zaobalým" do batch skriptů a to pouze pro ulehčení práce. Doporučuji však nahlédnout do skriptů (spouštějí pouze ```mvn``` příkaz s různými skladbami parametrů).

## Vytvoření archetype
Vytvořte si adresář, do něj nakopírujte ```create-archetype.bat```. Spusťte skript bez parametrů a budete dotázán na dva parametry:```groupId``` a ```artifactId```. To je v pořádku (to jsou základní atributy [maven projektu](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html).

```
create-archetype.bat
```

... nebo můžete definovat (pakliže znáte ```groupId``` a ```artifactId```) skript takto:
```
create-archetype.bat your-artifactId your-groupId
```


### Doplnění aktuálních versí
Základní archetypy [maven](https://maven.org) nejsou aktualizovány a je nutné si verse (pluginů, závislostí) v nich uvedené povýšit sám - pomocí tohoto skriptu, kterému je nutné předat cestu k archetypu. Doporučuji si obsah skriptu ```modify-pom.bat``` projít a případné verse (pluginů, závislostí) doplnit/změnit sám (jsou jenom dvě verse JDK a archetype pluginu).

```
modify-pom.bat archetype-simple
``` 

## Instalace archetype
Pro použití archetypu je nutné jej instalovat do lokálního repositáře a to klasickým příkazem:

```
mvn clean install
```
V tuto chvíli je archetype dostupný v lokálním repository a je možné skrze něj generovat již základny pro reálné projekty (viz. použití archetypu níže).

## Použití archetype
Pro vygenerování šablonu projektu z archetypu je nutné použít příkaz níže. Průvodce vás vyzve, abyste si našel příslušný archetype, např. dle ```artifactId``` (v tomto manuálu ```archetype-simple```). Dovyplníte další atributy v průvodci a poté vznikne adresář s vygenerovaným projektem.

```shell
use-archetype.bat
```

## Další
* [Maven - hlavní stránka](https://github.com/tomascejka/java/tree/main/maven)

## Zdroje
* [Maven Archetype](http://maven.apache.org/archetype/index.html)
* [Introduction to archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html)
* [Guide to create archetype](https://maven.apache.org/guides/mini/guide-creating-archetypes.html)
* [Maven Archetype Plugin](https://maven.apache.org/archetype/maven-archetype-plugin/index.html)
* [Maven Archetype Plugin - Usage](https://maven.apache.org/archetype/maven-archetype-plugin/usage.html)
* [Create own maven archetype in 5 simple steps](https://rieckpil.de/create-your-own-maven-archetype-in-5-simple-steps/)
* [How to create maven archetype in Netbeans](https://www.taringamberini.com/en/blog/java/how-to-create-a-maven-archetype-in-netbeans)
