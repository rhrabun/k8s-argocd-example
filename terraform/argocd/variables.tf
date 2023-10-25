# Cluster
variable "k8s_context" {
  description = "The name of the k8s context to use"
  default     = "docker-desktop"
}

# ArgoCD
variable "argocd_repo" {
  default = "https://argoproj.github.io/argo-helm"
}
variable "argocd_chart_name" {
  default = "argo-cd"
}

variable "chart_version" {
  default = "5.46.8"
}

variable "argocd_namespace" {
  default = "argocd"
}

variable "argocd_release_name" {
  default = "argocd"
}
