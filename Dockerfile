FROM tomcat:8
LABEL IMAGE=JAVATEST
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
COPY ./target/demo-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 9090
CMD ["catalina.sh", "run"]
