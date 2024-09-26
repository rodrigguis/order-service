FROM eclipse-temurin:21-alpine
LABEL authors="applemint"

ADD build/libs/app.jar /app.jar
#ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar
ADD build/agent/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar

#ENTRYPOINT java -javaagent:opentelemetry-javaagent.jar \
#                -Dotel.traces.exporter=logging \
#                -Dotel.metrics.exporter=logging \
#                -Dotel.logs.exporter=logging \
#                -jar /app.jar

ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar -jar /app.jar