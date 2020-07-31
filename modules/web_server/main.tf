resource "linode_firewall" "web_server" {
  label = var.firewall_label
  tags  = var.tags

  inbound {
    protocol = "TCP"
    ports = ["80"]
    addresses = ["0.0.0.0/0"]
  }

  outbound {
    protocol  = "TCP"
    ports     = ["80"]
    addresses = ["0.0.0.0/0"]
  }

    inbound {
    protocol = "TCP"
    ports = ["443"]
    addresses = ["0.0.0.0/0"]
  }

  outbound {
    protocol  = "TCP"
    ports     = ["443"]
    addresses = ["0.0.0.0/0"]
  }

  linodes = var.linodes
}
