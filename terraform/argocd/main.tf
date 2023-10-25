resource "helm_release" "argocd" {
  name             = var.argocd_release_name
  repository       = var.argocd_repo
  chart            = var.argocd_chart_name
  namespace        = var.argocd_namespace
  create_namespace = true
  version          = var.chart_version

  # Values for HA ArgoCD configuration. Requires at least 3 nodes in cluster
  # values = [ file("${path.module}/argocd_HA_config.yaml") ]
}
