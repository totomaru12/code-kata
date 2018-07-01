# kotlin-code-practice

## environment

```terminal
$ kotlin -version
Kotlin version 1.2.50-release-103 (JRE 1.8.0_172-b11)

$ gradle --version
Gradle 4.8
Groovy:       2.4.12
Ant:          Apache Ant(TM) version 1.9.11 compiled on March 23 2018
JVM:          1.8.0_172 (Oracle Corporation 25.172-b11)
```

## test

```terminal
$ gradle test
```

## build / run

```terminal
$ gradle build
$ gradle run
```

## setup (initial)

```terminal
$ brew install kotlin
$ gradle init --type java-application
$ rm -rf src/main/java/
$ rm -rf src/test/java/
$ mkdir src/main/kotlin
$ mkdir src/test/kotlin
$ vi build.gradle
== edit into registered format ...
$ gradle clean
$ gradle run
```
