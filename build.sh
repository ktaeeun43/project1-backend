#!/bin/bash



docker build -f ./Docker.cat-test -t test-cat:latest ..

docker tag test-cat:latest kimtaeeun/taeeun-test:test01

docker push kimtaeeun/taeeun-test:test01