# bash-kata

## setup (assert)

This practice uses the under test framework.  
<https://github.com/lehmannro/assert.sh>

Import test framework by the under command.  

```teraminal
$ curl -O https://raw.githubusercontent.com/lehmannro/assert.sh/master/assert.sh && chmod 744 ./assert.sh
```

## setup (bats)

Install the under test framework  
<https://github.com/sstephenson/bats>

## test (in case of using assert)

```terminal
$ cd ./yymmdd_xxx/
$ ./test_*.sh
```

## test (in case of using bats)

```terminal
$ cd ./yymmdd_xxx/
$ bats test_*.bats
```

## test (all bats tests)

```terminal
$ ./bats_test_all.sh
```

## environment

- macOS 10.x

## vscode debugger setting

```terminal
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
$ brew install bashdb
```
