terraform {
  backend "gcs" {
    bucket  = "cloudezy-bucket"
    prefix  = "terraform/state"
  }
}
