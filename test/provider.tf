terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.0.0"
    }
  }

  backend "gcs" {
    bucket = "cloudezy-bucket"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.location
}