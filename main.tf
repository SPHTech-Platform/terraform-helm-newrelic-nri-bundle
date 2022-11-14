locals {
  helm_config = merge(
    var.helm_config_defaults,
    {
      values = local.helm_values_defaults
    },
    var.helm_config
  )

  helm_values_defaults = [templatefile("${path.module}/templates/values.yaml", {})]
}

module "helm_newrelic_nri_bundle" {
  source  = "SPHTech-Platform/release/helm"
  version = "~> 0.1.0"

  helm_config = local.helm_config
}
