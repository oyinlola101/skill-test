terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.33.0"
    }
  }
  backend "gcs" {
    bucket      = "my-test-bucket-super-sandbox-1"
    prefix      = "terraform/state"
    

  }
}
provider "google" {
  project = var.project_id
  region  = var.region
}
