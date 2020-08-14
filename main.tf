terraform {
  required_providers {
    linode = {
      source = "terraform-providers/linode"
    }
  }
  required_version = ">= 0.13"
}

provider "linode" {
    api_version = "v4beta"
    token = var.token
}

locals {
    key = var.key
    linode_ids = linode_instance.linode_base[*].id
}

module "firewalls_web" {
    source = "./modules/web_server"
    firewall_label = var.firewall_label_map["web"]
    tags = var.tags
    linodes = local.linode_ids
}

resource "linode_sshkey" "main_key" {
    label = var.key_label
    ssh_key = chomp(file(local.key))
}

resource "linode_instance" "linode_base" {
    count = var.linode_count
    image = var.image
    label = "${var.label}_${count.index}"
    region = var.region
    type = var.type
    authorized_keys = [ linode_sshkey.main_key.ssh_key ]
    root_pass = var.root_pass
}


