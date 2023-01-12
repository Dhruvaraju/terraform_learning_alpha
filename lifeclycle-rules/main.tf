resource "local_file" "example_ref" {
  filename        = "D:\\temp\\lifecycle.txt"
  content         = "Example file creation for test"
  file_permission = "0777"
  lifecycle {
    create_before_destroy = true
  }
}