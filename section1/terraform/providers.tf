terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.33.0"
    }
  }
  backend "gcs" {
    bucket      = "ter-bucket"
    prefix      = "terraform/state"
    

  }
}
provider "google" {
  project = var.project_id
  region  = var.region
}
