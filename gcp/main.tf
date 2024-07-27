module "ansible-instance01" {
  source = "../modules/ComputeInstances"
  gcp_project = var.gcp_project

  private_key_path = "${var.private_key_path}"

}

# module "google_storage_bucket" {
#   source = "../modules/StorageBucket"
#   gcp_project = var.gcp_project
# }

# module "google_service_account" {
#   source = "../modules/IAMServiceAccount"
#   gcp_project = var.gcp_project
# }

