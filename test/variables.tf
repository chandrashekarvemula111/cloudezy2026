variable "project_name" {
  type        = string
  default     = "gcbdr-gl-2"
  description = "used to define project name"
}

variable "location" {
  type        = string
  default     = "us-central1"
  description = "used to define project location"
}

variable "gce_name" {
  type        = string
  description = "name of the gce instance"
}

variable "instance_type" {
  type        = string
  default     = "e2-micro"
  description = "to specify instance type"
}

variable "labels" {
  type = map(string)
  default = {
    terraform   = "true"
    project     = "cloudezy"
    environment = "cloudezy"
  }
}

variable "backend_bucket" {
  type        = string
  description = "GCS bucket for terraform state"
}

variable "private_ip" {
  type        = string
  description = "to print private IP of instance"
}