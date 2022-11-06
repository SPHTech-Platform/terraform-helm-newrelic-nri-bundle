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
  source = "github.com/SPHTech-Platform/terraform-helm-release?ref=init"

  helm_config = local.helm_config
}
