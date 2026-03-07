variable "project_name" {
    type = string
    default = "gcbdr-gl-2"
    description = "used to define project name"
}
variable "location" {
    type = string
    default = "us-central-1"
    description = "used to define project location"

}
variable "bucket_name" {
    type = string
    default = "cloudezy-bucket"
    description = "gcs bucket for remote backend"
}
variable "environment" {
    type = string
}
