data "google_service_account" "terraform_sa" {
  account_id = "cloudezy-test-srvact@gcbdr-gl-2.iam.gserviceaccount.com" # or the full email address
  project    = "gcbdr-gl-2"           # Optional, defaults to provider project
}