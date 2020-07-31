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

module "linodes" {
    source = "./modules/linodes"
    key = var.key
    key_label = var.key_label
    image = var.image
    label = var.label
    region = var.region
    type = var.type
    root_pass = var.root_pass
    authorized_keys = [ module.linodes.sshkey_linode ]
}

module "linodes-2" {
    source = "./modules/linodes"
    image = "linode/ubuntu18.04"
    label = "my-linode-2"
    region = "us-east"
    type = "g6-standard-1"
    root_pass = var.root_pass
    key = var.key
    key_label = var.key_label
    authorized_keys = [ module.linodes.sshkey_linode ]
}