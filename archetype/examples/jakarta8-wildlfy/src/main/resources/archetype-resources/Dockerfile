# https://github.com/jboss-dockerfiles/wildfly
FROM quay.io/wildfly/wildfly:28.0.0.Final-jdk11

# Additional configuration (use if you need it)
#COPY --chown=jboss:jboss ./wildfly/modules/ /opt/jboss/wildfly/modules/
#COPY --chown=jboss:jboss ./wildfly/standalone.xml /opt/jboss/wildfly/standalone/configuration/

USER jboss

# Deploy artefact
COPY --chown=jboss:jboss target/${artifactId}.war /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildFly/bin/standalone.sh", "-b", "0.0.0.0"]