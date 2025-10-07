# # Imagen base oficial
# FROM hashicorp/vault:1.13.3

# # Evita uso de IPC_LOCK (Render no lo permite)
# ENV VAULT_DISABLE_MLOCK=true

# # Expón el puerto HTTP
# EXPOSE 8200

# # Usa un comando de inicio sin capacidades restringidas
# ENTRYPOINT []

# # Ejecuta Vault en modo dev sin TLS ni mlock
# CMD ["vault", "server", "-dev", "-dev-listen-address=0.0.0.0:8200", "-dev-tls=false"]


# FROM hashicorp/vault:latest

# COPY vault-config.hcl /vault/config/vault-config.hcl

# EXPOSE 8200

# CMD ["vault", "server", "-config=/vault/config/vault-config.hcl"]


FROM hashicorp/vault:latest

# Desactiva capabilities problemáticas
USER root

# Copia tu configuración
COPY vault-config.hcl /vault/config/vault-config.hcl

# Cambia permisos para evitar requerir setcap
RUN setcap -r /bin/vault || true

# Puerto del servidor Vault
EXPOSE 8200

# Ejecuta Vault en modo servidor con tu configuración
CMD ["vault", "server", "-config=/vault/config/vault-config.hcl"]
