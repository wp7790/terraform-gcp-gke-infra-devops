# Terraform Settings Block
terraform {
  required_version = ">= 1.9"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 6.0.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-on-gcp-gke-wp2323"
    prefix = "dev/gke-cluster-private-autopilot"    
  }
}




# Terraform Provider Block
provider "google" {
  project = var.gcp_project
  region = var.gcp_region
}