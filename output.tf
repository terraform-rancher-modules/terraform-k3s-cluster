output "kubeconfig_location" {
  value = local_file.kube_config_yaml.filename
}