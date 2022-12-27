resource "local_file" "pet" {
    filename = "D:\\temp\\example.txt"
    content = "Initial file from terraform"
    file_permission = "0700"
}