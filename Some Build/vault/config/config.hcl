ui = true
disable_mlock = "true"

storage "raft" {
  path    = "/vault/data"
  node_id = "node1"
}

listener "tcp" {
  address = "[::]:8200"
  tls_disable = "false"
  tls_cert_file = "/certs/public.crt"
  tls_key_file  = "/certs/private.key"
}

api_addr = "https://vault.devops.id.vn:8200"
cluster_addr = "https://vault.devops.id.vn:8201"
