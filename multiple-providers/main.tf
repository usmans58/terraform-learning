resource "local_file" "example" {
  
  content  = "This is a sample content"
  filename = "sample.txt"
}

resource "random_pet" "name" {
  prefix = "pet"
  separator = "."
  length = "1"

}