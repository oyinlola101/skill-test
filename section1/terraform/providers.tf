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
    credentials = "C:/Users/oyin/Desktop/my-key.json"

  }
}
provider "google" {
  project = var.project_id
  region  = var.region
}