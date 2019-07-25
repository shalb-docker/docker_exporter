# docker_exporter
docker exporter for prometheus monitoring

## Info

Use this exporter in case of running conainers by docker-compose (you will have no containers names and probably not all needed metrics via cadvisor).

## build

~~~~
docker login
docker-compose -f docker-compose-build.yml build
docker-compose -f docker-compose-build.yml push
~~~~

## configuration

customize your configuration via config file docker_exporter/exporter/exporter.py.yml

## run

Use docker-compose.yml to run container with mounted config docker_exporter/exporter/exporter.py.yml
~~~~
docker-compose up
~~~~

## dependencies if want to run without container

pip3 install --user pyaml prometheus_client docker

