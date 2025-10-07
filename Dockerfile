# Imagen base oficial
FROM hashicorp/vault:1.13.3

# Evita uso de IPC_LOCK (Render no lo permite)
ENV VAULT_DISABLE_MLOCK=true

# Expón el puerto HTTP
EXPOSE 8200

# Usa un comando de inicio sin capacidades restringidas
ENTRYPOINT []

# Ejecuta Vault en modo dev sin TLS ni mlock
CMD ["vault", "server", "-dev", "-dev-listen-address=0.0.0.0:8200", "-dev-tls=false"]
