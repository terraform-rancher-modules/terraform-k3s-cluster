locals {
  k3s_kubeconfig_location = "/etc/rancher/k3s/k3s.yaml"
}

resource "null_resource" "k3s" {
   connection {
    type        = "ssh"
    user        = var.node_username
    private_key = file(pathexpand(var.ssh_private_key_pem))
    host        = var.node_public_ip
    timeout     = "10s"
    agent       = "false"
  }

  provisioner "remote-exec" {
    inline = [
      "curl https://get.k3s.io | INSTALL_K3S_EXEC=\"server --node-external-ip ${var.node_public_ip} --node-ip ${var.node_internal_ip}\" INSTALL_K3S_VERSION=${var.kubernetes_version} sudo sh -",
      "sudo sed \"s/127.0.0.1/${var.node_public_ip}/g\" ${local.k3s_kubeconfig_location}",
    ]
  }

  provisioner "local-exec" {
    command = "scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ${var.ssh_private_key_pem} ${var.node_username}@${var.node_public_ip}:${local.k3s_kubeconfig_location} pathexpand(${var.kubeconfig_filepath})/${var.kubeconfig_filename}"
  }
}
