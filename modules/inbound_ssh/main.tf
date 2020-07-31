resource "linode_firewall" "ssh_inbound" {
  label = var.firewall_label
  tags  = var.tags

  inbound {
    protocol = "TCP"
    ports = ["22"]
    addresses = ["0.0.0.0/0"]
  }

  linodes = var.linodes
}
