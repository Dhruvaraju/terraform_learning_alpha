resource "local_file" "cars" {
  filename = each.value
  content  = "this is for suv"

  for_each = var.filename
}