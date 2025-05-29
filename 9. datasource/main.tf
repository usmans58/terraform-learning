resource "local_file" "pet" {
    filename = "pet.txt"
    content  = data.local_file.dog.content
}

data "local_file" "dog" {
    filename = "dog.txt"
    
}

