# java11-junit5-archetype

Maven projekt, s JDK11 a JUnit 5.

## Instalace

Pro instalaci do lokálního repository lze použít následující příkaz:

```shell
mvn install
```

## Použití
Pokud je archetyp instalován lokálně lze vytvořit projekt pomocí příkazové řádky (nahraďte hodnoty v attributech ```groupId``` a ```artifactId```):

``` shell
 mvn archetype:generate -DarchetypeGroupId=cz.toce.archetypes \
                        -DarchetypeArtifactId=java11-junit5-archetype \
                        -DarchetypeVersion=1.0.0-SNAPSHOT \
                        -DgroupId=cz.toce.learn \
                        -DartifactId=javase \
                        -Dversion=1.0.0-SNAPSHOT \
                        -DinteractiveMode=false
```

## Zdroje

* [Originál](https://github.com/kusnier/java11-junit5-archetype)
* [Co je to .gitkeep](https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/gitkeep-push-empty-folders-git-commit)
* [Maven](https://maven.apache.org)
* [Maven Archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html)
* [JUnit 5](https://junit.org/junit5/)
* [Hamcrest](http://hamcrest.org/JavaHamcrest/)
