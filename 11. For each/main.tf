resource "local_file" "name" {
    filename = each.value
    content  = "This is a file named ${each.value}."
    for_each = var.filename

  
}