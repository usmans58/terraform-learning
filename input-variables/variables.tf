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
