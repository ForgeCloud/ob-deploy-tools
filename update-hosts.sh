#!/usr/bin/env bash

if [ ! -z ${IP_ADDRESS} ] && [ ! -z ${DOMAIN} ] && [ ! ${DNS_OVERRIDE} == "false" ]; then
  echo "Warning: Overriding DNS for ${DOMAIN} to resolve to ${IP_ADDRESS}"
  cat >> /etc/hosts <<EOF
${IP_ADDRESS}   node.analytics.${DOMAIN}
${IP_ADDRESS}   analytics.${DOMAIN}
${IP_ADDRESS}   auth.${DOMAIN}
${IP_ADDRESS}   bank.${DOMAIN}
${IP_ADDRESS}   directory.${DOMAIN}
${IP_ADDRESS}   register.${DOMAIN}
${IP_ADDRESS}   am.${DOMAIN}
${IP_ADDRESS}   account.${DOMAIN}
${IP_ADDRESS}   admin.${DOMAIN}
${IP_ADDRESS}   as.aspsp.${DOMAIN}
${IP_ADDRESS}   config.${DOMAIN}
${IP_ADDRESS}   docs.${DOMAIN}
${IP_ADDRESS}   jwkms.${DOMAIN}
${IP_ADDRESS}   matls.as.aspsp.${DOMAIN}
${IP_ADDRESS}   matls.rs.aspsp.${DOMAIN}
${IP_ADDRESS}   matls.service.bank.${DOMAIN}
${IP_ADDRESS}   matls.service.directory.${DOMAIN}
${IP_ADDRESS}   monitoring.${DOMAIN}
${IP_ADDRESS}   rcs.aspsp.${DOMAIN}
${IP_ADDRESS}   rs-simulator.aspsp.${DOMAIN}
${IP_ADDRESS}   rs.aspsp.${DOMAIN}
${IP_ADDRESS}   scgw.${DOMAIN}
${IP_ADDRESS}   service.bank.${DOMAIN}
${IP_ADDRESS}   service.directory.${DOMAIN}
${IP_ADDRESS}   service.metrics.${DOMAIN}
${IP_ADDRESS}   service.register.${DOMAIN}
${IP_ADDRESS}   shop.${DOMAIN}
${IP_ADDRESS}   swagger.${DOMAIN}
${IP_ADDRESS}   tpp-core.${DOMAIN}
EOF
fi