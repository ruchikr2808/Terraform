variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "uat", "prod"], var.environment)
    error_message = "Must be dev, uat, or prod."
  }
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "ctm-test"
}
