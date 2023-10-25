terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.11.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = var.k8s_config
  }
}
provider "kubernetes" {
  config_path    = var.k8s_config
  config_context = var.k8s_context
}
