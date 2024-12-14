variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags" {

    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}



variable "domain_name" {
    default = "gopi-81s.online"
}

variable "zone_id" {
    default = "Z0899670238D02XK0M9FO"
}