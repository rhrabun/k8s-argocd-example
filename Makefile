# Help function taken from here:
# https://gist.github.com/prwhite/8168133?permalink_comment_id=3291344#gistcomment-3291344


help: ## Show this help message
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'


tf-init: ## Initialize Terraform
	cd terraform; \
	terraform init

tf-plan: ## Terraform plan
	cd terraform; \
	terraform plan

tf-apply: ## Terraform apply
	cd terraform; \
	terraform apply

tf-destroy: ## Terraform destroy
	cd terraform; \
	terraform destroy


argo-get-pass: ## Get ArgoCD password from the secret
	kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

argo-port-forward: ## Forward port for ArgoCD without exposing API server.
	kubectl port-forward svc/argocd-server -n argocd 8080:443


helm-install: ## Install helm release from chart. Params: <app> - app name; <chartDir> - directory with Chart files
	helm install $(app) $(chartDir)

helm-uninstall: ## Uninstalls Helm release. Params: <app> - app name
	helm uninstall $(app)
