module "kubernetes" {
  source              = "sacloud/kubernetes-single-master/sakuracloud"
  password            = "${var.password}"
  use_external_router = true
  use_cloud_provider  = true
  kubernetes_version  = "1.12.3"
  worker_count        = 2
}

variable password {
  type = "string"
}
