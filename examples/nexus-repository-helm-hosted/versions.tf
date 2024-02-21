################################################################################
# Repository Helm Hosted
################################################################################
terraform {
  required_version = ">= 1.3.0"
  required_providers {
    nexus = {
      source  = "datadrivers/nexus"
      version = ">= 2.0.0"
    }
  }
}
