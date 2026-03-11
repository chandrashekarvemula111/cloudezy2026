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
/*
variable "bucket_name" {
    type = string
    description = "gcs bucket for remote backend"
}
*/

variable "gce_name" {
    type = string
    description = "name of the gce instance"
}
variable "instance-type" {
    type = string
    default = "e2-micro"
    description = "to specify instance type"
}
variable "lables" {
    default {
        terraform = true
        project = cloudezy
        environment = cloudezy
        
    }
}
variable "backend-bucket" {
    type = string
    description = "GCS bucket for terraform state"
    
}
variable "private-ip" {
    type = string
    description = "to Print private ip of instanace"
}
