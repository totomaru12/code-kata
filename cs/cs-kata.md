# C#-code-practice

## environment

- dotnet --version 2.1.200

## test

```terminal
$ cd ./cs-kata.tests
$ dotnet test
```

If ```$ dotnet test``` executes on the top directory, the under message prints on terminal.  

```text
Unable to find tests for ... cs-kata.dll. Make sure test project has a nuget reference of package "Microsoft.NET.Test.Sdk" and framework version settings are appropriate.
```

So make sure to change directory into the test directory.

## debug

```terminal
$ ./cs-kata
$ dotnet run
```

## build

```terminal
$ dotnet build
```

## setup (initial)

```terminal
$ dotnet new sln
$ mkdir cs-kata
$ cd cs-kata
$ dotnet new console
$ cd ../
$ dotnet sln add ./cs-kata/cs-kata.csproj
$ mkdir cs-kata.tests
$ cd ./cs-kata.tests
$ dotnet new xunit
$ dotnet add reference ../cs-kata/cs-kata.csproj
$ cd ../
$ dotnet sln add ./cs-kata.tests/cs-kata.tests.csproj
```

## reference

<https://docs.microsoft.com/en-us/dotnet/core/testing/unit-testing-with-dotnet-test>
