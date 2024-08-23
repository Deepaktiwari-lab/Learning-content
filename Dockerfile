# Use the official Tomcat base image
FROM tomcat:9-jdk11

# Maintain information about the maintainer
LABEL maintainer="your-email@example.com"

# Set environment variables if needed
ENV CATALINA_OPTS="-Xms512M -Xmx1024M"

# Copy your application WAR file(s) into the Tomcat webapps directory
# Replace 'your-application.war' with your actual WAR file name
COPY your-application.war /usr/local/tomcat/webapps/

# Expose the Tomcat port
EXPOSE 8081

# Start Tomcat server
CMD ["catalina.sh", "run"]

