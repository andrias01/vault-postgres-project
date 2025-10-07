# Almacenamiento de Vault en PostgreSQL
storage "postgresql" {
  connection_url = "postgresql://postgres:zamaSRiLZrfwYFewRqWwFsgffHrvxSrA@switchyard.proxy.rlwy.net:35862/railway?sslmode=require"
}

# Configuración del listener HTTP
listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

ui = true
disable_mlock = true
