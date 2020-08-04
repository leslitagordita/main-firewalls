variable "token" {
  description = " Linode API token"
}

variable "key" {
  description = "Public SSH Key's path---."
}

variable "key_label" {
  description = "New SSH key label."
}

variable "linode_count" {
  description = "The number of Linode instances to deploy."
  type = number
  default = 1
}

variable "image" {
  description = "Image to use for Linode instance."
  default = "linode/ubuntu18.04"
}

variable "label" {
  description = "The Linode's label is for display purposes only, but must be unique."
  default = "default-linode"
}

variable "region" {
  description = "The region where your Linode will be located."
  default = "us-east"
}

variable "type" {
  description = "Your Linode's plan type."
  default = "g6-standard-1"
}

variable "root_pass" {
  description = "Your Linode's root user's password."
}

variable "linodes" {
  description = "List of Linode ids to which the rule sets will be applied"
  type        = list(string)
  default     = []
}

variable "firewall_label_map" {
  type = "map"
  default = {
    "web" = "firewall_web_server"
    "mysql" = "firewall_mysql"
    "ssh" = "firewall_ssh"
  }
}

variable "tags" {
  description = "List of tags to apply to this Firewall"
  type        = list(string)
  default     = []
}

