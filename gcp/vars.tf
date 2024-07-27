variable "gcp_project" {
  type = string
  description = "The Google Project ID"
}

variable "private_key_path" {
  description = "Path to the private SSH key"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public SSH key"
  type        = string
}
