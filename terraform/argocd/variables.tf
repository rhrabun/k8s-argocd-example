variable "argocd_repo" {
  description = "The URL of the ArgoCD Helm Chart repository"
  type        = string
  default     = "https://argoproj.github.io/argo-helm"
}
variable "argocd_chart_name" {
  description = "The name of the ArgoCD Helm Chart"
  type        = string
  default     = "argo-cd"
}

variable "chart_version" {
  description = "The version of the ArgoCD Helm Chart"
  type        = string
  default     = "5.46.8"
}

variable "argocd_namespace" {
  description = "The name of the namespace for ArgoCD to be deployed in"
  type        = string
  default     = "argocd"
}

variable "argocd_release_name" {
  description = "The name of the ArgoCD release"
  type        = string
  default     = "argocd"
}
