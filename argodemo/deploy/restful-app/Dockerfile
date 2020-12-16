FROM openjdk:11.0.9.1-jdk-slim
RUN groupadd -r argogrp && useradd -r -g argogrp argousr 
RUN mkdir -p /home/argousr/bookapp
RUN chown argousr /home/argousr
RUN chgrp argogrp /home/argousr
USER argousr:argogrp
WORKDIR /home/argousr/bookapp
COPY target/restful-app-1.0-SNAPSHOT.jar /home/argousr/bookapp/app.jar
CMD ["/usr/local/openjdk-11/bin/java", "-jar", "./app.jar"]
