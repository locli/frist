#!/bin/bash

if [ -n ${TEST_MAX_ACTIVE} ] ; then ds=" maxActive=${TEST_MAX_ACTIVE}" ; fi
if [ -n ${TEST_MAX_IDLE} ] ; then ds="${ds} maxIdle=${TEST_MAX_IDLE}" ; fi
if [ -n ${TEST_MAX_WAIT} ] ; then ds= "${ds} maxWait=${TEST_MAX_WAIT}" ; fi
if [ -n ${TEST_MIN_IDLE} ] ; then ds= "${ds} minIdle=${TEST_MIN_IDLE}" ; fi

datasources="<Resource auth=\\\"Container\\\" driverClassName=\\\"com.ibm.db2.jcc.DB2Driver\\\" name=\\\"${TEST_JNDI}\\\" username=\\\"${TEST_USERNAME}\\\" password=\\\"${TEST_PASSWORD}\\\" type=\\\"javax.sql.DataSource\\\" url=\\\"${TEST_URL}\\\" ${ds} />"

echo ${datasources}

sed -i "s|<!-- ##DATASOURCES## -->|${datasources}<!-- ##DATASOURCES## -->|" $JWS_HOME/conf/context.xml                                                                                                      
