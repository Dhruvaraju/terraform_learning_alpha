resource "local_file" "pet" {
    filename = "D:\\temp\\example.txt"
    content = "Initial file from terraform"
    file_permission = "0700"
}

resource "random_pet" "test_pet" {
    prefix = "Mrs"
    seperator = "."
    length = 2
}