# Terraform Modules Template

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.7.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helm_newrelic_nri_bundle"></a> [helm\_newrelic\_nri\_bundle](#module\_helm\_newrelic\_nri\_bundle) | github.com/SPHTech-Platform/terraform-helm-release | init |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helm_config"></a> [helm\_config](#input\_helm\_config) | Helm provider config for new relic nri bundle. | `any` | `{}` | no |
| <a name="input_helm_config_defaults"></a> [helm\_config\_defaults](#input\_helm\_config\_defaults) | Helm provider default config for new relic bundle. | `any` | <pre>{<br>  "chart": "nri-bundle",<br>  "create_namespace": true,<br>  "description": "New Relic NRI bundle helm Chart deployment configuration",<br>  "name": "newrelic-bundle",<br>  "namespace": "newrelic",<br>  "repository": "https://helm-charts.newrelic.com",<br>  "version": "4.9.2"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
