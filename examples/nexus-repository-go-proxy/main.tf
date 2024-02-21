provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Repository Go Proxy
################################################################################
module "nexus_repository_go_proxy" {
  source = "../../modules/nexus-repository-go-proxy"

  name   = "docker-proxy"
  online = true

  storage = {
    blob_store_name                = "default"
    strict_content_type_validation = true
  }

  proxy = {
    remote_url       = "https://proxy.golang.org/"
    content_max_age  = 1440
    metadata_max_age = 1440
  }

  negative_cache = {
    enabled = true
    ttl     = 1440
  }

  http_client = {
    blocked    = false
    auto_block = true
  }
}
