FROM vault:1.17.1

# Copia el archivo de configuración con las variables
COPY vault-config.hcl /vault/config/vault-config.hcl

# Instala envsubst
RUN apt-get update && apt-get install -y gettext-base

# Expone el puerto de Vault
EXPOSE 8200

# Usa envsubst al ejecutar el contenedor
CMD ["/bin/sh", "-c", "envsubst < /vault/config/vault-config.hcl > /vault/config/config-rendered.hcl && vault server -config=/vault/config/config-rendered.hcl"]
