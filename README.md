# Terraform Linode Cloud Firewalls Module
This repository includes a Terraform Module with configurations for common Firewall rules.

This module can be cloned and extended to create your own base Firewall rules. This module uses the [Linode Terraform Provider](https://registry.terraform.io/providers/linode/linode/latest/docs) and the [Linode Cloud Firewall Resource](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/firewall) and requires [Terraform version 0.13](https://www.hashicorp.com/blog/announcing-hashicorp-terraform-0-13/). Linode Cloud Firewalls is not yet generally available, but will soon be open for a private beta. [Sign up for the private beta](https://www.linode.com/green-light/) to gain access to Linode Cloud Firewalls.

If you are new to Terraform Modules, see the [How To Deploy Secure Linodes using Cloud Firewalls and Terraform](https://www.linode.com/docs/applications/configuration-management/terraform/how-to-build-your-infrastructure-using-terraform-and-linode/index.md) guide for a details on creating a similar module for your Cloud Firewalls.

