variable "k8s_context" {
  description = "The name of the k8s context to use"
  type        = string
  default     = "docker-desktop"
}

variable "k8s_config" {
  description = "The path to the Kubernetes config"
  type        = string
  default     = "~/.kube/config"
}
