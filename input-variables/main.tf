resource "local_file" "example" {
  content  = var.content
  filename = var.filename
}

resource "random_pet" "name" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}