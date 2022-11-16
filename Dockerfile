FROM tomcat
LABEL IMAGE=JAVATEST
WORKDIR /usr/local/tomcat/
COPY ./target/Calculator-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/
EXPOSE 8080
