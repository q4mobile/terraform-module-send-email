resource "null_resource" "default" {
  provisioner "local-exec" {
    command     = "${var.command} ${path.module}${var.script_path}"
    environment = {
      FROM    = var.from
      TO      = var.to
      SUBJECT = var.subject
      BODY    = var.body
      PORT    = var.port
      HOST    = var.host
      REGION  = var.region
    }
  }
}
