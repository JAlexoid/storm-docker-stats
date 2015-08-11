#!/bin/bash

mkdir __stg-tmp
git clone git@github.com:verisign/storm-graphite.git __stg-tmp
cd __stg-tmp
git checkout 0.2.3
./gradlew build
mv build/libs/storm-graphite-0.2.3-SNAPSHOT-all.jar ../storm/
cd ..
rm -rf __stg-tmp

docker build -t="jalexoid/sstorm:latest" storm
docker build -t="jalexoid/sstorm-nimbus:latest" storm-nimbus
docker build -t="jalexoid/sstorm-supervisor:latest" storm-supervisor
docker build -t="jalexoid/sstorm-ui:latest" storm-ui
