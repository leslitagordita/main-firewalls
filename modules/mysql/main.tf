resource "linode_firewall" "mysql" {
  label = var.firewall_label
  tags  = var.tags

  inbound {
    protocol = "TCP"
    ports = ["3306"]
    addresses = var.addresses
  }
  linodes = var.linodes
}
