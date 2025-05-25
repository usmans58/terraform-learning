 variable "content" {
  description = "The content to be written to the file"
  type        = string
  default     = "This is a sample content"
 }
 
variable "filename" {
  description = "The name of the file to be created"
  type        = string
  default     = "sample.txt"
}
variable "prefix" {
  description = "The prefix for the random pet name"
  type        = string
  default     = "pet"
}
variable "separator" {
  description = "The separator for the random pet name"
  type        = string
  default     = "."
}
variable "length" {
  description = "The length of the random pet name"
  type        = string
  default     = "1"
}
variable "prefix-list" {
  description = "A list of prefixes for the random pet name"
  type        = list(string)
  default     = ["Mr.", "Ms.", "Dr."]
  
}
variable "file-content-map"{
  type = map(string)
  default = {
    "statement1" = "This is the first statement.",
    "statement2" = "This is the second statement.",
  }
}
variable "set"{
  type = set(string)
  default = ["apple", "banana", "cherry"]
  description = "A set of fruits"
}
variable "object-pet"{
  description = "values for the object pet"
  type=object({
    name = string
    age  = number
    is-favorite = string
    food = list(string)
  })
  default = {
    name = "Buddy"
    age = 5
    is-favorite = "yes"
    food = ["bones", "meat", "fish"]
  }
}