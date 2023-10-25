# Deploy main ArgoCD application into cluster
resource "kubernetes_manifest" "argocd_main_app" {
  manifest = yamldecode(templatefile("${path.module}/argocd_main.yaml", {
    path           = var.git_path
    repoURL        = var.git_repoURL
    targetRevision = var.git_targetRevision
  }))
}
