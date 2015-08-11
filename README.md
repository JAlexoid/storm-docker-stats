storm-docker-stats
============

This is a Storm Deocker image repo with StatsD/Graphite/Grafana installed as the statistics system.

For the UI - Kamon.io's Docker Graphite/Grafana stack is used. Wurstmeister's Storm Docker images are used as base.

These images are available on Docker Hub. Simply using Fig/Docker Compose will pull the latest version and start it all up.

To see an example and run the starter topologies, you can deploy the examples that come with Storm. In this case it's the [RollingTopWords](https://github.com/nathanmarz/storm-starter/blob/master/src/jvm/storm/starter/RollingTopWords.java) toology.


The prebuilt images are available on the [Docker Hub](https://hub.docker.com/u/jalexoid/). Simply using [Fig/Docker Compose](https://github.com/JAlexoid/storm-docker-stats/blob/master/docker-compose.yml) will pull the latest version and start it all up.

Download Storm 0.9.5 and run the following command to deploy a sample topology to the running Storm cluster:

```sh
storm jar \
 storm-starter-topologies-0.9.5.jar \
  -c nimbus.host=${DOCKER_IP} \
  -c nimbus.thrift.port=49627 \
  storm.starter.RollingTopWords slidingWindowCounts remote
```

  Please remember to replace the `${DOCKER_IP}` with the correct IP.

  After it all starts, feel free to navigate to the following:
- http://localhost:10080/ - for Grafana
- http://localhost:10081/ - for Graphite
- http://localhost:49080/ - for Storm UI

(boot2docker addresses may be different)
