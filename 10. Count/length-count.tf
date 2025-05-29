resource "local_file" "example-length-count" {
    filename = var.filename[count.index]
    content  = var.content[count.index]

    count = length(var.filename)
}
