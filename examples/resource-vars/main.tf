resource "local_file" "pet" {
  filename        = var.filename
  content         = "The pet that is generated is ${random_pet.test_pet.id}"
  file_permission = var.file_permission
  depends_on = [
    random_pet.test_pet
  ]
}

resource "random_pet" "test_pet" {
  prefix    = var.prefix
  separator = var.seperator
  length    = 2
}