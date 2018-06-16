ARG JAVA_VERSION
FROM odaceo/java:${JAVA_VERSION}

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG GRADLE_VERSION
ENV GRADLE_HOME /opt/gradle
COPY scripts/gradle.sh /root/
RUN set -eux; /root/gradle.sh
