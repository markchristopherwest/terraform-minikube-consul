provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "consul-k8s" {
  name       = "consul-k8s"

  repository = "https://helm.releases.hashicorp.com/"
  chart      = "consul"

#   set {
#     name  = "service.type"
#     value = "ClusterIP"
#   }
}