FROM ubuntu:latest

ENV PROXYSQL_VERSION="2.0.17"

RUN apt-get update && \
    apt-get install -y wget mysql-client gettext-base

RUN wget https://github.com/sysown/proxysql/releases/download/v${PROXYSQL_VERSION}/proxysql_${PROXYSQL_VERSION}-ubuntu20_amd64.deb && \
    dpkg -i proxysql_${PROXYSQL_VERSION}-ubuntu20_amd64.deb && \
    rm proxysql_${PROXYSQL_VERSION}-ubuntu20_amd64.deb

EXPOSE 6032 6033

CMD ["proxysql", "-f"]
