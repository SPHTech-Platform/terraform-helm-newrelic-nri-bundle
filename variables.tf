################
# Chart configs
################
variable "helm_config_defaults" {
  description = "Helm provider default config for new relic bundle."
  type        = any
  default = {
    name             = "newrelic-bundle"
    chart            = "nri-bundle"
    repository       = "https://helm-charts.newrelic.com"
    version          = "5.0.18"
    namespace        = "newrelic"
    create_namespace = true
    description      = "New Relic NRI bundle helm Chart deployment configuration"
  }
}

variable "helm_config" {
  description = "Helm provider config for new relic nri bundle."
  type        = any
  default     = {}
}
