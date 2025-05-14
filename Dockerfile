# Use the official Tomcat image
FROM tomcat:9.0-jdk8

# Remove the default webapps to keep the container clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the Tomcat webapps directory
COPY target/webapp-0.1.1.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

