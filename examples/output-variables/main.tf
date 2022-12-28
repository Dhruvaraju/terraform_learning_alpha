resource "local_file" "pet" {
    filename = var.filename
    content = "The pet that is generated is ${random_pet.test_pet.id}"
    file_permission = var.file_permission
    depends_on = [
        random_pet.test_pet
    ]
}

resource "random_pet" "test_pet" {
    prefix = var.prefix
    separator = var.seperator
    length = 2
}

output pet_name {
    value = random_pet.test_pet.id
    description = "The pet name that will be created as part of test_pet generation"
}