terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.38.0"
    }
  }
  backend "gcs" {
    # Values below will be replaced in github action from file in env folder from poc_gcp.state.tf
    bucket = "will fetch from state file"
    prefix = "will fetch from state file"
  }
}

provider "google" {
  # Configuration options
}