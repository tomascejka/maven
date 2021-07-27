# Maven archetype - studijní průvodce

## Co to je archetype
Je [nástroj](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html#what-is-archetype), kterým popíši obsah softwarového projekt-u jako šablonu (vznikne předloha), z které lze generovat finální softwarový projekt. Archetype je interně implementován jako konkrétně [maven archetype plugin](https://maven.apache.org/archetype/maven-archetype-plugin/usage.html).

## Použití
Vystačíš-li s [vestavěnými](https://maven.apache.org/archetypes/index.html) nebo již existujícími (vytvořený komunitou) archetypy, pak stačí zavolat příkaz v konsoli a projít si průvodce:

```bash
mvn archetype:generate
```

**Tip**: nebo použijte předpřipravený [maven-quickstart-archetype](https://maven.apache.org/archetypes/maven-archetype-quickstart/index.html)
```bash
mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart
```

## Vytvoření
Můžeš si vytvořit svůj archetype a to buď [ručně](https://maven.apache.org/guides/mini/guide-creating-archetypes.html), nebo použiješ [poloautomatický](https://maven.apache.org/guides/mini/guide-creating-archetypes.html#alternative-way-to-start-creating-your-archetype) přístup (preferuji) via příkaz:

```bash
mvn archetype:generate
  -DgroupId=[your project's group id]
  -DartifactId=[your project's artifact id]
  -DarchetypeGroupId=org.apache.maven.archetypes
  -DarchetypeArtifactId=maven-archetype-archetype
```
Poloautomatický přístup je vytvořen pomocí vestavěného [maven archetype](https://maven.apache.org/archetypes/maven-archetype-archetype/) projektu.

### Pokročilé vytvoření
Archetype je možné vytvořit parametricky pomocí [souboru](https://maven.apache.org/archetype/maven-archetype-plugin/examples/create-with-property-file.html) (obsahující parametry). Nebo je možné vytvořit archetype z již [existujícího projektu](https://maven.apache.org/archetype/maven-archetype-plugin/examples/create-multi-module-project.html) (zajímavá technika, pokud máte existující projekt).

## Uložení vytvořeného archetype
Nový archetype je nutné uložit do svého repositáře, aby byl dostupný k použití (tzn. k nalezení pomocí <code>mvn archetype:generate</code>). Uložení se provede:

```bash
mvn clean install
```

### Použití vytvořeného archetype
Pro použití nového archetype využijeme [odfiltrovaného katalogu](https://maven.apache.org/archetype/maven-archetype-plugin/examples/generate-alternative-catalog.html) pro snadnější archetype:

```bash
mvn archetype:generate -DarchetypeCatalo=local
```

### Závěr
V tuto chvíli umíte pracovat s [maven archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html) nástrojem (umíte jej použít , popř. si jej vytvořit, uložit a zase použít).

## Zdroje
1. [What is archetype](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html#what-is-archetype)
2. [Bundled Maven archetypes](https://maven.apache.org/archetypes/index.html)
3. [Archetype maven plugin](https://maven.apache.org/archetype/maven-archetype-plugin/usage.html)
4. [Guide to create archetype](https://maven.apache.org/guides/mini/guide-creating-archetypes.html)
5. [Create archetype with property file](https://maven.apache.org/archetype/maven-archetype-plugin/examples/create-with-property-file.html)
6. [Create archetype from existing project](https://maven.apache.org/archetype/maven-archetype-plugin/examples/create-multi-module-project.html)
