output "linode_id" {
    value = linode_instance.linode_base[*].id
}