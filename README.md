storm-docker-stats
============

This is a Storm Deocker image repo with StatsD/Graphite/Grafana installed as the statistics system.

Kamon.io's Docker Graphite/Grafana stack in docker-compose.yml
Wurstmeister's Storm Docker images are used as base.


These images are available on Docker Hub. Simply using Fig/Docker Compose will pull the latest version and start it al up.

Download Storm 0.9.5 and run the following command to deploy a sample topology to the running Storm cluster:
storm jar storm-starter-topologies-0.9.5.jar -c nimbus.host=${DOCKER_IP} -c nimbus.thrift.port=49627 storm.starter.RollingTopWords  slidingWindowCounts remote

Open:
http://localhost:10080/ - for Grafana
or
http://localhost:10081/ - for Graphite


https://hub.docker.com/u/jalexoid/
