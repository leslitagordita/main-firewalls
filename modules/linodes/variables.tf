variable "key" {
  description = "Public SSH Key's path."
}

variable "key_label" {
  description = "new SSH key label"
}

variable "image" {
  description = "Image to use for Linode instance"
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

variable "authorized_keys" {
  description = "SSH Keys to use for the Linode."
  type = list(string)
}

variable "root_pass" {
  description = "Your Linode's root user's password."
}

