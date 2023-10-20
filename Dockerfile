FROM eclipse-temurin:17  

COPY . /usr/src/movies-api-java
WORKDIR /usr/src/movies-api-java
RUN wget -O dd-java-agent.jar 'https://dtdg.co/latest-java-tracer'

RUN chmod +x ./run.sh
ENTRYPOINT [ "./run.sh" ]
