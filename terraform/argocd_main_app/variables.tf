variable "git_path" {
  description = "Git Source path to track by main ArgoCD app"
  type        = string
  default     = ""
}

variable "git_repoURL" {
  description = "Git repository URL to track by main ArgoCD app"
  type        = string
  default     = ""
}

variable "git_targetRevision" {
  description = "Git Source path to track by main ArgoCD app"
  type        = string
  default     = "HEAD"
}
