#!/bin/bash

cd ./bash/
./bats_test_all.sh
cd ../

cd ./cpp/
make
cd ../

cd ./cs/cs-kata.tests/
dotnet test
cd ../../

cd ./es5-jasmine/
npm test
cd ../

cd ./es5-mocha/
npm test
cd ../

cd ./es6/
npm test
cd ../

cd ./go/
go test -v ./...
cd ../

cd ./java/
./gradlew build
cd ../

cd ./kotlin/
gradle test
cd ../

cd ./perl/
prove --lib
cd ../

cd ./php/
./vendor/bin/kahlan --reporter=verbose
cd ../

cd ./python/
./test_all.sh
cd ../

cd ./ruby/
rspec -f d
cd ../

cd ./scala/
sbt test
cd ../

cd ./ts/
npm test
cd ../
