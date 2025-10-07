storage "postgresql" {
  connection_url = "postgresql://postgres:zamaSRiLZrfwYFewRqWwFsgffHrvxSrA@switchyard.proxy.rlwy.net:35862/railway?sslmode=require"
  table = "vault_kv_store"
  ha_enabled = true
  ha_table = "vault_ha_locks"
}

api_addr = "http://0.0.0.0:8200"
disable_mlock = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

ui = true
disable_mlock = true
