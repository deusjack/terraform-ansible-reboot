resource "ansible_playbook" "repoot" {
  name                    = var.hostname
  playbook                = "${path.module}/reboot.yaml"
  replayable              = false
  ignore_playbook_failure = false
  lifecycle {
    replace_triggered_by = [
      null_resource.reboot,
      null_resource.external
    ]
  }
}
