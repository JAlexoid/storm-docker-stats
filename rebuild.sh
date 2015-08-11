#!/bin/bash

mkdir __stg-tmp
git clone git@github.com:verisign/storm-graphite.git __stg-tmp
cd __stg-tmp
git checkout 0.2.3
./gradlew build
mv build/libs/storm-graphite-0.2.3-SNAPSHOT-all.jar ../storm/
cd ..
rm -rf __stg-tmp

docker build -t="jalexoid/storm:0.9.5" storm
docker build -t="jalexoid/storm-nimbus:0.9.5" storm-nimbus
docker build -t="jalexoid/storm-supervisor:0.9.5" storm-supervisor
docker build -t="jalexoid/storm-ui:0.9.5" storm-ui
