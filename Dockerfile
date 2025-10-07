FROM vault:1.17.2

COPY vault-config.hcl /vault/config/vault-config.hcl

# Instala envsubst para reemplazar variables
RUN apt-get update && apt-get install -y gettext-base

# Script para sustituir variables antes de ejecutar Vault
ENTRYPOINT ["/bin/sh", "-c", "envsubst < /vault/config/vault-config.hcl > /vault/config/config-rendered.hcl && vault server -config=/vault/config/config-rendered.hcl"]
