# terraform-digitalocean-github-runner

Create a GitHub Actions runner on a DigitalOCean droplet.

<!-- BEGIN_TF_DOCS -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_runner_scope"></a> [runner\_scope](#input\_runner\_scope) | Runner registration repo/org. | `string` | n/a | yes |
| <a name="input_runner_token"></a> [runner\_token](#input\_runner\_token) | Runner registration token. Get it with:<pre>gh api -p everest -X POST repos/{owner}/{repo}/actions/runners/registration-token \| jq .token</pre> | `string` | n/a | yes |
| <a name="input_ssh_key"></a> [ssh\_key](#input\_ssh\_key) | SSH key fingerprint to administrate the droplet. | `string` | n/a | yes |
| <a name="input_add_to_project"></a> [add\_to\_project](#input\_add\_to\_project) | If created resources should be added to a Digital Ocean project. | `bool` | `false` | no |
| <a name="input_do_project_id"></a> [do\_project\_id](#input\_do\_project\_id) | Digital Ocean project ID. Must be set if `group_in_project` is true. | `string` | `null` | no |
| <a name="input_droplet_size_slug"></a> [droplet\_size\_slug](#input\_droplet\_size\_slug) | Droplet size slug. Leaving empty will use the cheapest droplet. [More info](https://www.digitalocean.com/docs/droplets/sizes). | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Define which region to use. [More info](https://docs.digitalocean.com/products/platform/availability-matrix/#available-datacenters). | `string` | `"nyc1"` | no |
| <a name="input_runner_name"></a> [runner\_name](#input\_runner\_name) | Name of the runner. | `string` | `null` | no |
| <a name="input_ubuntu_version"></a> [ubuntu\_version](#input\_ubuntu\_version) | Ubuntu version to use (regex). The default regex will make sure the image is the latest LTS on each Terraform apply. Here's a [list of the available versions](https://do-community.github.io/available-images/) if you want to test your regex. | `string` | `"\\(LTS\\) x64$"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ips"></a> [ips](#output\_ips) | Github runner IP addresses (ipv4 & ipv6). |
<!-- END_TF_DOCS -->

## Contributing

All contributions are welcome!

Generate documentation with `terraform-docs .`

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details
