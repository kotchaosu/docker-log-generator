FROM python:3.9.4-alpine3.13
RUN pip install log-generator==1.0.2
COPY entrypoint.sh /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
