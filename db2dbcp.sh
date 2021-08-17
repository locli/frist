#!/bin/bash

datasources="<Resource auth=\\\"Container\\\" driverClassName=\\\"com.ibm.db2.jcc.DB2Driver\\\" name=\\\"${TEST_JNDI}\\\" username=\\\"${TEST_USERNAME}\\\" password=\\\"${TEST_PASSWORD}\\\" type=\\\"javax.sql.DataSource\\\" url=\\\"${TEST_URL}\\\" />"

echo ${datasources}

sed -i "s|<!-- ##DATASOURCES## -->|${datasources}<!-- ##DATASOURCES## -->|" $JWS_HOME/conf/context.xml                                                                                                      
