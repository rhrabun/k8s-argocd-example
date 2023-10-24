# k8s-argocd-example

Example project for learning ArgoCD integration.

The idea is to have fully automated CD system for K8s cluster:
* Main ArgoCD controller, which manages other 'worker' controllers;
* Worker ArgoCD controllers, which manage applications hosted in the K8s cluster;
* Applications defined with the Helm Charts for customization convenience.


### How-To
For convenience there is a Makefile that contains most useful commands.
It has `help` function, which can be executed with `make` or `make help` and it will print available commands with descriptions and params.
