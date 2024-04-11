FROM registry.access.redhat.com/ubi9 as ubi-micro-build
COPY file/lfvn-rootca.crt /etc/pki/ca-trust/source/anchors/lfvn-rootca.crt
RUN update-ca-trust

FROM registry.redhat.io/rhbk/keycloak-rhel9:22 as builder

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure a database vendor
ENV KC_DB=oracle
ADD --chown=keycloak:keycloak https://repo1.maven.org/maven2/com/oracle/database/jdbc/ojdbc11/23.2.0.0/ojdbc11-23.2.0.0.jar /opt/keycloak/providers/ojdbc11.jar
ADD --chown=keycloak:keycloak https://repo1.maven.org/maven2/com/oracle/database/nls/orai18n/23.2.0.0/orai18n-23.2.0.0.jar /opt/keycloak/providers/orai18n.jar

# Copy plugin
COPY file/keycloak-restrict-client-auth.jar /opt/keycloak/providers/

WORKDIR /opt/keycloak

RUN /opt/keycloak/bin/kc.sh build

FROM registry.redhat.io/rhbk/keycloak-rhel9:22
COPY --from=builder /opt/keycloak/ /opt/keycloak/
COPY --from=ubi-micro-build /etc/pki /etc/pki
RUN chmod 777 -R /opt/keycloak/providers/ojdbc11.jar
RUN chmod 777 -R /opt/keycloak/providers/orai18n.jar

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
