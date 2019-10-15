#!/usr/bin/env bash

if [ ! -z ${IP_ADDRESS} ] && [ ! -z ${DOMAIN} ] && [ ! ${DNS_OVERRIDE} == "false" ]; then
  echo "Warning: Overriding DNS for ${DOMAIN} to resolve to ${IP_ADDRESS}"
  echo "${IP_ADDRESS}   node.analytics.${DOMAIN} analytics.${DOMAIN} auth.${DOMAIN} bank.${DOMAIN} directory.${DOMAIN} register.${DOMAIN} am.${DOMAIN} account.${DOMAIN} admin.${DOMAIN} as.aspsp.${DOMAIN} config.${DOMAIN} docs.${DOMAIN} jwkms.${DOMAIN} matls.as.aspsp.${DOMAIN} matls.rs.aspsp.${DOMAIN} matls.service.bank.${DOMAIN} matls.service.directory.${DOMAIN} monitoring.${DOMAIN} rcs.aspsp.${DOMAIN} rs-simulator.aspsp.${DOMAIN} rs.aspsp.${DOMAIN} scgw.${DOMAIN} service.bank.${DOMAIN} service.directory.${DOMAIN} service.metrics.${DOMAIN} service.register.${DOMAIN} shop.${DOMAIN} swagger.${DOMAIN} tpp-core.${DOMAIN} swagger.${DOMAIN}" >> /etc/hosts
fi
