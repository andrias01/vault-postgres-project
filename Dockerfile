FROM hashicorp/vault:latest

USER root

# Copia el archivo de configuración (ya contiene la cadena de conexión hard-coded)
COPY vault-config.hcl /vault/config/config-rendered.hcl

# Ajusta permisos y cambia al usuario vault
RUN chown -R vault:vault /vault

USER vault

# Expone el puerto de Vault
EXPOSE 8200

# Inicia Vault usando el archivo de configuración ya renderizado
# El flag -dev-no-store-token evita problemas de permisos en Render
CMD ["vault", "server", "-config=/vault/config/config-rendered.hcl"]
