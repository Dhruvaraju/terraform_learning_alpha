resource "local_file" "pet" {
  filename        = var.filename
  content         = var.content
  file_permission = var.file_permission
}

resource "random_pet" "test_pet" {
  prefix    = var.prefix
  separator = var.seperator
  length    = 2
}