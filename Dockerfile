FROM registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:1.4-28

COPY Lab6A.war /deploymnets/
COPY launch.sh /opt/webserver/bin/
COPY db2dbcp.sh /opt/webserver/bin/launch/

RUN chmod 777 /opt/webserver/bin/launch.sh
RUN chmod 777 /opt/webserver/bin/launch/db2dbcp.sh 
