variable "gcp_project" {
    type = string
    description = "The Google Project ID"
}

variable "image" {
  type        = string
  description = "The image to deploy to"
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "private_key_path" {
  type    = string
  description = "SSH key from github actions"
  default = ".ssh/id_rsa"
}

variable "ssh_user" {
  type    = string
  default = "ansible1"
}