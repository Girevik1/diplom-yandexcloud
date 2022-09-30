resource "null_resource" "wait" {
  provisioner "local-exec" {
    command = "sleep 30"
  }

  depends_on = [
    local_file.inventory
  ]
}

resource "null_resource" "bossmachine" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory.yml ../ansible/nginx/nginx-letsencrypt.yml"
  }

  depends_on = [
    null_resource.wait
  ]
}

resource "null_resource" "db" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory.yml ../ansible/db/db.yml"
  }

  depends_on = [
    null_resource.bossmachine
  ]
}

resource "null_resource" "wordpress" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory.yml ../ansible/wordpress/wordpress.yml"
  }

  depends_on = [
    null_resource.db
  ]
}

resource "null_resource" "gitlab" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory.yml ../ansible/gitlab/gitlab.yml"
  }
  depends_on = [
    null_resource.wordpress
  ]
}

resource "null_resource" "monitoring" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory.yml ../ansible/monitoring/monitoring.yml"
  }

  depends_on = [
    null_resource.gitlab
  ]
}

resource "null_resource" "node_exporter" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory.yml ../ansible/node_exporter/node_exporter.yml"
  }

  depends_on = [
    null_resource.monitoring
  ]
}

