resource "linode_firewall" "mysql" {
  label = var.firewall_label
  tags  = var.tags

  inbound {
    protocol = "TCP"
    ports = ["3306"]
    addresses = ["0.0.0.0/0"]
  }

  outbound {
    protocol  = "TCP"
    ports     = ["3306"]
    addresses = ["0.0.0.0/0"]
  }
  linodes = var.linodes
}
