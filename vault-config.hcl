storage "postgresql" {
  connection_url = "postgresql://postgres:zamaSRiLZrfwYFewRqWwFsgffHrvxSrA@switchyard.proxy.rlwy.net:35862/railway?sslmode=disable"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

ui = true
disable_mlock = true
