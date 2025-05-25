resource "local_file" "example" {
  filename = "pet.txt"
  content  = "My favorite pet is ${random_pet.name.id}."
  
}

resource "random_pet" "name" {
  prefix = "Mr"
  separator = "."
  length = "1"

}