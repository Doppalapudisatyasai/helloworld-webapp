# Use official Tomcat base image
FROM tomcat:9.0-jdk8

# Remove default webapps to avoid clutter
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from Maven build output
COPY target/helloworld-webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
