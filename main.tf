provider "linode" {
    api_version = "v4beta"
    token = var.token
}

module "firewalls" {
    source = "./modules/web_server"
    firewall_label = var.firewall_label
    tags = var.tags
    linodes = local.linode_ids
}

locals {
    key = var.key
    linode_ids = linode_instance.linode_base[*].id
}

resource "linode_sshkey" "main_key" {
    label = var.key_label
    ssh_key = chomp(file(local.key))
}

resource "linode_instance" "linode_base" {
    count = 2
    image = "linode/ubuntu18.04"
    label = "${var.label}_${count.index}"
    region = "us-east"
    type = "g6-standard-1"
    authorized_keys = [ linode_sshkey.main_key.ssh_key ]
    root_pass = var.root_pass
}


