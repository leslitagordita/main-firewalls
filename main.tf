provider "linode" {
    api_version = "v4beta"
    token = var.token
}

module "firewalls" {
    source = "./modules/web_server"
    firewall_label = var.firewall_label
    tags = var.tags
    linodes = [module.linodes.linode_id]
}

locals {
    key = var.key
}

resource "linode_sshkey" "main_key" {
    label = var.key_label
    ssh_key = chomp(file(local.key))
}

resource "linode_instance" "linode_base" {
    image = "linode/ubuntu18.04"
    label = "my-linode-2"
    region = "us-east"
    type = "g6-standard-1"
    key = var.key
    key_label = var.key_label
    authorized_keys = [ linode_sshkey.main_key.ssh_key ]
    root_pass = var.root_pass
}


