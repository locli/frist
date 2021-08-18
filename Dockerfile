#FROM registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:1.4-28
FROM image-registry.openshift-image-registry.svc:5000/openshift/jboss-webserver31-tomcat8-openshift

COPY Lab6A.war /deploymnets/
COPY launch.sh /opt/webserver/bin/
COPY db2dbcp.sh /opt/webserver/bin/launch/
COPY db2_db2driver_for_jdbc_sqlj.zip /opt/webserver/lib/

USER root

RUN chmod 777 /opt/webserver/bin/launch.sh
RUN chmod 777 /opt/webserver/bin/launch/db2dbcp.sh 

USER 185
EXPOSE 8080
EXPOSE 8443
EXPOSE 8778

CMD ["/opt/webserver/bin/launch.sh", "run"]
