FROM tomcat:8
LABEL IMAGE=JAVATEST
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
COPY ./target/Calculator-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 9090
CMD ["catalina.sh", "run"]
