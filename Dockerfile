FROM gradle:8.1.1-jdk17

RUN apt-get update && apt-get install -qq -y --no-install-recommends

ENV INSTALL_PATH /api-gateway

RUN mkdir $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .