FROM openjdk:8-jre-slim

ENV DB_HOST=ds029837.mlab.com
ENV DB_PORT=29837
ENV DB_NAME=lazy_load_dev
ENV DB_USER=user
ENV DB_PASS=tnsPass0

EXPOSE 9000
WORKDIR /app
COPY ./application.yaml .
COPY ./build/libs/lazy-load-backend-1.0.jar .

RUN chmod 755 lazy-load-backend-1.0.jar

ENTRYPOINT ["java","-jar","/app/lazy-load-backend-1.0.jar","--spring.config.location=/app/application.yaml"]