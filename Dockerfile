FROM gradle:7.3.3-jdk8 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon
WORKDIR /home/gradle/src
RUN gradle test --no-daemon AS test

