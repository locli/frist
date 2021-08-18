FROM registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:1.4-28

RUN chmod 777 launch.sh
RUN chmod 777 db2dbcp.sh 

COPY Lab6A.war /deploymnets/
COPY launch.sh /opt/webserver/bin/
COPY db2dbcp.sh /opt/webserver/bin/launch/
COPY db2_db2driver_for_jdbc_sqlj.zip /opt/webserver/lib/
