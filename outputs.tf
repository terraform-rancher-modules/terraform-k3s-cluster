output "kubeconfig_location" {
  value = "pathexpand(${var.kubeconfig_filepath})/${var.kubeconfig_filename}"
}
