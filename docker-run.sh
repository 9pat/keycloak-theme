#!/bin/sh
# this is "docker run" command to deploy keycloak for testing 
# alter volume mapping to suit you file/folder setting 

docker run --name sso -itd \
-e KEYCLOAK_USER=admin \
-e KEYCLOAK_PASSWORD=admin \
-e DB_VENDOR=H2 -p 80:8080 \
-v /home/9pat/sso/conf/standalone.xml:/opt/jboss/keycloak/standalone/configuration/standalone.xml \
-v /home/9pat/sso/conf/standalone-ha.xml:/opt/jboss/keycloak/standalone/configuration/standalone-ha.xml \
-v /home/9pat/sso/theme/9pat:/opt/jboss/keycloak/themes/9pat \
jboss/keycloak