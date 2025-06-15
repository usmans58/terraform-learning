resource "local_file" "name" {
    for_each = var.filename
    filename = each.value
    content  = "This is a file named ${each.value}."
    

  
}