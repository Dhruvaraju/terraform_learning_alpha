resource "local_file" "ev" {
  filename = var.filename[count.index]
  content  = "example content"

  count = length(var.filename)
}

/*
resource "local_file" "ev" {
  filename = var.filename[count.index]
  content  = "example content"

  count    = 3
}
*/

output "ev-list" {
  value     = local_file.ev
  sensitive = true
}

