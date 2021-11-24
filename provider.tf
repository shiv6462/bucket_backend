terraform {
  required_version = ">= 0.12"
  backend "gcs" {
bucket = "my_backend_bucket"
prefix = "network-tfstate"
credentials = "my-first-project-331921-6472d80132f0.json"
}
}
provider "google" {
  credentials = file(var.gcp_auth_file)
  project     = var.gcp_project
  region      = var.gcp_region
}
