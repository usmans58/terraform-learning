variable "object-data-type" {
  type = object({
    name = string
    age  = number
    tags = list(string)
  })

    default = {
        name = "John Doe"
        age  = 30
        tags = ["developer", "terraform"]
    }
}