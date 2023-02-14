FROM python:3.7.1

COPY docker_exporter/exporter /opt/exporter
RUN ls -la /opt/exporter
RUN pip3 install -r /opt/exporter/requirements.txt

RUN chmod 755 /opt/exporter/exporter.py

RUN useradd -m -s /bin/bash my_user

#USER my_user

ENTRYPOINT ["/usr/local/bin/python", "/opt/exporter/exporter.py"]
