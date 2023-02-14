FROM python:3.11-alpine

COPY ./exporter /opt/exporter
RUN pip3 install -r /opt/exporter/requirements.txt

RUN chmod 755 /opt/exporter/exporter.py

ENTRYPOINT ["/usr/local/bin/python", "/opt/exporter/exporter.py"]
