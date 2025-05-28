resource "local_file" "example2" {
  filename = "pet2.txt"
  content  = "My favorite pet is Moneky."
  lifecycle {
    prevent_destroy = true
  }
}