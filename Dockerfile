#FROM registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:1.4-28
#FROM image-registry.openshift-image-registry.svc:5000/openshift/jboss-webserver31-tomcat8-openshift:1.4
FROM default-route-openshift-image-registry.apps.ocp4.test.fu.igotit.co.kr/openshift/jboss-webserver31-tomcat8-openshift:1.4

COPY Lab6A.war /deploymnets/
COPY launch.sh /opt/webserver/bin/
COPY db2dbcp.sh /opt/webserver/bin/launch/
COPY db2_db2driver_for_jdbc_sqlj.zip /opt/webserver/lib/

USER root

RUN chmod 777 /opt/webserver/bin/launch.sh
RUN chmod 777 /opt/webserver/bin/launch/db2dbcp.sh 
RUN chmod 777 /opt/webserver/lib/db2_db2driver_for_jdbc_sqlj.zip
RUN chmod 777 /deploymnets/Lab6A.war

RUN chown 185 /opt/webserver/bin/launch.sh
RUN chown 185 /opt/webserver/bin/launch/db2dbcp.sh 
RUN chown 185 /opt/webserver/lib/db2_db2driver_for_jdbc_sqlj.zip
RUN chown 185 /deploymnets/Lab6A.war


EXPOSE 8080
EXPOSE 8443
EXPOSE 8778

USER 185
WORKDIR /home/jboss
#CMD ["/opt/webserver/bin/launch.sh"]
FROM 
