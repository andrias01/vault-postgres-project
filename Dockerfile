# Usa la imagen oficial de Vault
FROM hashicorp/vault:1.13.3

# Establece el directorio de trabajo
WORKDIR /vault

# Copia tu archivo de configuración (si lo usas)
COPY config.hcl /vault/config.hcl

# Expone el puerto del servicio Vault
EXPOSE 8200

# Comando de inicio (usa el archivo de configuración)
CMD ["server", "-config=/vault/config.hcl"]
