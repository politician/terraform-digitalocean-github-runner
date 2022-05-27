# ---------------------------------------------------------------------------------------------------------------------
# Digital Ocean
# ---------------------------------------------------------------------------------------------------------------------
variable "ssh_key" {
  description = "SSH key fingerprint to administrate the droplet."
  type        = string
}

variable "region" {
  description = "Define which region to use. [More info](https://docs.digitalocean.com/products/platform/availability-matrix/#available-datacenters)."
  type        = string
  default     = "nyc1"
}

variable "add_to_project" {
  description = "If created resources should be added to a Digital Ocean project."
  type        = bool
  default     = false
}

variable "do_project_id" {
  description = "Digital Ocean project ID. Must be set if `group_in_project` is true."
  type        = string
  default     = null
}

variable "ubuntu_version" {
  description = "Ubuntu version to use (regex). The default regex will make sure the image is the latest LTS on each Terraform apply. Here's a [list of the available versions](https://do-community.github.io/available-images/) if you want to test your regex."
  type        = string
  default     = "\\(LTS\\) x64$" // Latest LTS image
}

variable "droplet_size_slug" {
  description = "Droplet size slug. Leaving empty will use the cheapest droplet. [More info](https://www.digitalocean.com/docs/droplets/sizes)."
  type        = string
  default     = null // Cheapest
}

# ---------------------------------------------------------------------------------------------------------------------
# GitHub
# ---------------------------------------------------------------------------------------------------------------------
variable "runner_scope" {
  description = "Runner registration repo/org."
  type        = string
}

variable "runner_token" {
  description = <<-EOF
    Runner registration token. Get it with:
    ```
    gh api -p everest -X POST repos/{owner}/{repo}/actions/runners/registration-token \| jq .token
    ```
    EOF
  type        = string
}

variable "runner_name" {
  description = "Name of the runner."
  type        = string
  default     = null
}
