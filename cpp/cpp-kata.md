# cpp-kata

## environment

```terminal
$ g++ --version
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
Apple LLVM version 9.1.0 (clang-902.0.39.2)
Target: x86_64-apple-darwin17.5.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin

$ cmake --version
cmake version 3.11.4
```

## test

```terminal
$ make
or
$ make test
```

## when add new source file

It needs to add new source and test source file path at ```add_library``` and ```add_executable``` in ```./test/CMakeLists.txt```.  
The insertion points have comment like ```add new source file the above line```

## setup (initial)

```terminal
$ brew install cmake
```

## setup (after clone)

```terminal
$ mkdir -p test/lib/googletest/
$ cd test/lib/googletest/
$ git clone https://github.com/google/googletest.git -b release-1.8.0
```

## memo

This practice's unit test uses "google test"  
<https://github.com/google/googletest>
