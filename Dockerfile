FROM hashicorp/vault:latest

# Configuración de variables de entorno para modo dev
ENV VAULT_DEV_ROOT_TOKEN_ID=myroot
ENV VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200
ENV VAULT_ADDR=http://0.0.0.0:8200

# Expone el puerto de Vault
EXPOSE 8200

# Inicia Vault en modo desarrollo
CMD ["vault", "server", "-dev", "-dev-no-store-token"]
