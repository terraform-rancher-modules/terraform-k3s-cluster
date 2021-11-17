# Terraform Module | k3s cluster

Terraform module to create k3s cluster.

### Usage

```hcl
module "k3s_cluster" {
  source = "github.com/terraform-rancher-modules/terraform-k3s-cluster"

  node_public_ip = "192.168.236.121"
  node_internal_ip = "192.168.236.121"
}
```

Check the examples folder for more usage ideas.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_sshcommand"></a> [sshcommand](#provider\_sshcommand) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.kube_config_yaml](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [sshcommand_command.install_k3s](https://registry.terraform.io/providers/invidian/sshcommand/latest/docs/resources/command) | resource |
| [sshcommand_command.retrieve_config](https://registry.terraform.io/providers/invidian/sshcommand/latest/docs/resources/command) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Kubernetes version to use for the k3s cluster | `string` | `"v1.21.4+k3s1"` | no |
| <a name="input_node_internal_ip"></a> [node\_internal\_ip](#input\_node\_internal\_ip) | Internal IP of compute node for Rancher cluster | `string` | n/a | yes |
| <a name="input_node_public_ip"></a> [node\_public\_ip](#input\_node\_public\_ip) | Public IP of compute node for Rancher cluster | `string` | n/a | yes |
| <a name="input_node_username"></a> [node\_username](#input\_node\_username) | Username used for SSH access to the Rancher server cluster node | `string` | n/a | yes |
| <a name="input_rke_kubeconfig_filename"></a> [rke\_kubeconfig\_filename](#input\_rke\_kubeconfig\_filename) | Kubeconfig output filename to use | `string` | `"kube_config_cluster.yml"` | no |
| <a name="input_ssh_private_key_pem"></a> [ssh\_private\_key\_pem](#input\_ssh\_private\_key\_pem) | Private key used for SSH access to the Rancher server cluster node(s) | `string` | `"~/.ssh/id_rsa"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubeconfig_location"></a> [kubeconfig\_location](#output\_kubeconfig\_location) | n/a |

