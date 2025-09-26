variable "location" {
  description = "Azure Region"
  default     = "West Europe"
}

variable "oe" {
  description = "Organizational entity tag"
  type        = string
  default     = "ch_iu"
}

variable "ritaid" {
  description = "Rita ID / lifecycle code"
  type        = string
  default     = "terraform-demo"
}

variable "environment" {
  description = "Environment code"
  type        = string
  default     = "d" # dev
}

variable "container_cpu" {
  description = "CPU cores for the container"
  type        = number
  default     = 2
}

variable "container_memory" {
  description = "Memory (GB) for the container"
  type        = number
  default     = 4
}

locals {
  common_tags = {
    oe          = var.oe
    ritaid      = var.ritaid
    environment = var.environment
  }
}
