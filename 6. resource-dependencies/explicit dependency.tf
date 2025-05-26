resource "local_file" "Whale" {
  content  = "Whale"
  filename = "whale.txt"
  depends_on = [local_file.krill] # Explicit dependency on the krill resource
}
resource "local_file" "krill" {
  content  = "Krill"
  filename = "krill.txt"
}