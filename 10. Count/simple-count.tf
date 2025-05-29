resource "local_file" "name" {
    filename = var.filename[count.index]
    content  = var.content[count.index]

    count = 3
}
