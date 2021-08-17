FROM registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:1.4-28

COPY a.war /deploymnets/
