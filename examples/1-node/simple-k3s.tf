module "k3s" {
  source = "github.com/terraform-rancher-modules/terraform-k3s-cluster"

  node_public_ip = "192.168.236.121"
  node_internal_ip = "192.168.236.121"
  node_username = "vagrant"
  ssh_private_key_pem = "~/.ssh/id_rsa"
}