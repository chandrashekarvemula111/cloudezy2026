variable "gce_name" {
    type = string
    description = "name of the gce instance"
}
variable "instance-type" {
    type = string
    default = "t3.micro"
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

