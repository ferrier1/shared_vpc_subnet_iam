variable "subnet_members" {
  description = "The list of service accounts to use the subnet"
  type        = "list"
  default     = [""]
}

variable "subnet" {
  description = "The subnet to share to the service project"
  type        = "string"
  default     = ""
}

variable "host_project" {
  description = "The host project where the Shared VPC belongs"
  type        = "string"
  default     = ""
}

variable "service_projects" {
  description = "The service project that needs attaching"
  type        = "list"
  default     = [""]
}
