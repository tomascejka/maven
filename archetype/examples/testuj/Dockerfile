# https://www.wildfly.org/news/2022/08/04/wildfly-maven-docker/
#FROM quay.io/wildfly/wildfly-runtime-jdk11
FROM quay.io/wildfly/wildfly-runtime-jdk17

COPY --chown=jboss:root target/server $JBOSS_HOME
RUN chmod -R ug+rwX $JBOSS_HOME

USER jboss

# Additional configuration (use if you need it)
#COPY --chown=jboss:jboss ./wildfly/modules/ $JBOSS_HOME/modules/
#COPY --chown=jboss:jboss ./wildfly/standalone.xml $JBOSS_HOME/standalone/configuration/

# Deploy artefact
COPY --chown=jboss:jboss target/testuj.war $JBOSS_HOME/standalone/deployments/