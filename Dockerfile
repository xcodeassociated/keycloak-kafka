# https://www.keycloak.org/server/containers
FROM quay.io/keycloak/keycloak:25.0
COPY target/keycloak-kafka-*-jar-with-dependencies.jar /opt/keycloak/providers/keycloak-kafka-jar-with-dependencies.jar
RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]