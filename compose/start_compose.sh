docker rm $(docker ps -a | grep Exited | awk '{print $1;}')
docker rmi $(docker images -q --filter "dangling=true")
docker pull lmagnin/docker-nats-connector-spark:app
docker pull lmagnin/docker-nats-connector-spark:gatling
docker pull lmagnin/docker-nats-connector-spark:monitor
docker-compose up

