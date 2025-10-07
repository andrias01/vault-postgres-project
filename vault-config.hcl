storage "postgresql" {
  connection_url = "${env("DATABASE_URL")}"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

ui = true

# Evita requerir capacidades del sistema
disable_mlock = true
