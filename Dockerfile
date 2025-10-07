FROM hashicorp/vault:latest

# Copia el archivo de configuración (ya contiene la cadena de conexión hard-coded)
# Lo colocamos como config-rendered.hcl para que Vault lo use directamente
COPY vault-config.hcl /vault/config/config-rendered.hcl

# Expone el puerto de Vault
EXPOSE 8200

# Inicia Vault usando el archivo de configuración ya renderizado
CMD ["vault", "server", "-config=/vault/config/config-rendered.hcl"]
