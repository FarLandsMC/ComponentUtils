# ComponentUtils

A library on top of Adventure for dealing with Components in an easy way
for developers.


## Usage

Get ComponentUtils from [JitPack](https://jitpack.io/#FarLandsMC/ComponentUtils/)

```xml
<repositories>
    <repository>
        <id>jitpack.io</id>
        <url>https://jitpack.io</url>
    </repository>
</repositories>

<!-- ... -->

<dependency>
    <groupId>com.github.FarLandsMC</groupId>
    <artifactId>ComponentUtils</artifactId>
    <version>main-SNAPSHOT</version>
</dependency>
```

Use it in your code:

```java
import net.farlandsmc.componentutils.ComponentUtils;

String name = "bob";
ComponentUtils.format("Hello {:red}", name)
```
