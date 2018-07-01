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
$ cd ./xxx/yymmdd/
$ ./test_*.sh
```

## test (in case of using bats)

```terminal
$ cd ./xxx/yymmdd/
$ bats test_*.bats
```

## environment

- macOS 10.x
