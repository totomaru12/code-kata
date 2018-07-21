# go-code-practice

## environment

- goenv -v goenv 1.0.0
- goenv version 1.10.3

## test

```terminal
$ go test ./1*
$ go test -v ./...
```

## run

```terminal
$ go run <go source file>
```

## setup (initial)

```terminal
$ brew install goenv

$ vi ~/.bash_profile
export PATH="$HOME/.goenv/bin:$PATH"
export GOPATH=$HOME/go
eval "$(goenv init -)"

$ source ~/.bash_profile

$ goenv install -l

$ goenv install 1.10.3

$ goenv versions

$ goenv global 1.10.3

$ goenv rehash
```