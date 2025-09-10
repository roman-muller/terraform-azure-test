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
  default     = "d" # dev
}

variable "environment" {
  description = "Environment code"
  type        = string
  default     = "d" # dev
}

locals {
  common_tags = {
    oe          = var.oe
    ritaid      = var.ritaid
    environment = var.environment
  }
}
