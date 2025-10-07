FROM hashicorp/vault:latest

# Variables de entorno para Vault
ENV VAULT_ADDR=http://0.0.0.0:8200

# Copia el archivo de configuración
COPY vault-config.hcl /vault/config/vault-config.hcl

# Expone el puerto de Vault
EXPOSE 8200

# Inicia Vault con la configuración
CMD ["vault", "server", "-config=/vault/config/vault-config.hcl"]
