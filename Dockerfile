
FROM tomcat:7

# Take the war and copy to webapps of tomcat

COPY target/*.war /opt/tomcat7/webapps
