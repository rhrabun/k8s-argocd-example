module "argocd" {
  source = "./argocd"
}

module "argocd_main_app" {
  depends_on = [module.argocd]
  source     = "./argocd_main_app"

  git_path    = "cluster/applications"
  git_repoURL = "git@github.com:rhrabun/k8s-argocd-example.git"
}
