FROM tomcat:9.0.90-jdk8-temurin-jammy
ENV VERSION=8.24.0
RUN apt-get update && apt-get install -y curl unzip
RUN curl -O https://download.newrelic.com/newrelic/java-agent/newrelic-agent/${VERSION}/newrelic-java-${VERSION}.zip && \
    unzip newrelic-java-${VERSION}.zip -d /usr/local/ && \
    rm newrelic-java-${VERSION}.zip