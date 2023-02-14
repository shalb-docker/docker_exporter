FROM python:3.11-alpine

COPY docker_exporter/exporter /opt/exporter
RUN ls -la /opt/exporter
RUN pip3 install -r /opt/exporter/requirements.txt

RUN chmod 755 /opt/exporter/exporter.py

ENTRYPOINT ["/usr/local/bin/python", "/opt/exporter/exporter.py"]
