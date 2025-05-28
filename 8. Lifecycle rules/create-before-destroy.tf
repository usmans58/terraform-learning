resource "local_file" "example" {
  filename = "pet.txt"
  content  = "My favorite pet is Cat."
  lifecycle {
    create_before_destroy = true
 
  }
}
