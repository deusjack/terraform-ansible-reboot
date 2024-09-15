#################
# ansible files #
#################

resource "null_resource" "reboot" {
  triggers = {
    reboot = filemd5("${path.module}/reboot.yaml")
  }
}

#####################
# external triggers #
#####################

resource "null_resource" "external" {
  triggers = var.external_triggers
}
