variable "node_public_ip" {
  type        = string
  description = "Public IP of compute node for Rancher cluster"
}

variable "node_internal_ip" {
  type        = string
  description = "Internal IP of compute node for Rancher cluster"
}

variable "node_username" {
  type        = string
  description = "Username used for SSH access to the Rancher server cluster node"
  default     = "ubuntu"
}

variable "ssh_private_key_pem" {
  type        = string
  description = "Private key used for SSH access to the Rancher server cluster node(s)"
  default     = "~/.ssh/id_rsa"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for the k3s cluster"
  default     = "v1.21.4+k3s1"
}

variable "kubeconfig_filename" {
  type        = string
  description = "Kubeconfig output filename to use"
  default     = "config"
}

variable "kubeconfig_filepath" {
  type        = string
  description = "Kubeconfig output path/dir to use"
  default     = "~/.kube"
}
