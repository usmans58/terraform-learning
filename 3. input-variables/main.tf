resource "local_file" "example" {
  content  = var.content
  filename = var.filename
}

resource "random_pet" "name" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}
resource "local_file" "example-map" {
  for_each = var.file-content-map
  content  = each.value
  filename = "${each.key}.txt"
  
}