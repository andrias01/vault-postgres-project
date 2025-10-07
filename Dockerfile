# Usa la imagen oficial de Vault
FROM hashicorp/vault:1.13.3

# Desactivar el uso de IPC_LOCK (porque Render no lo permite)
ENV VAULT_DISABLE_MLOCK=true

# Puerto que usará Vault
EXPOSE 8200

# Comando para ejecutar Vault en modo dev (sin privilegios del sistema)
CMD ["vault", "server", "-dev", "-dev-listen-address=0.0.0.0:8200"]
