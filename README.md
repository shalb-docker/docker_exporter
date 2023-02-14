# docker_exporter

Docker exporter for Prometheus monitoring

## Info

Use this exporter in case of running conainers by docker-compose (you will have no containers names and probably not all needed metrics via cadvisor).

## build

~~~~bash
docker login
docker-compose -f docker-compose-build.yml build
docker-compose -f docker-compose-build.yml push
~~~~

## configuration

Customize your configuration via config file docker_exporter/exporter/exporter.py.yml

## run

Use docker-compose.yml to run container.  
To customize config you can mount your customized exporter.py.yml to /opt/exporter/exporter.py.yml.

~~~~bash
docker-compose up
~~~~

## dependencies if want to run without container

~~~~bash
pip3 install -r requirements.txt
~~~~
