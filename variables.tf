variable "policy_name" {
  description = "Name of the anti-fraud policy definition"
  type        = string
  default     = "anti-fraud-policy"
}

variable "display_name" {
  description  = "Display name of the anti-fraud policy definition"
  type         = string
  default      = "Anti-Fraud Policy"
}

variable "description" {
  description = "Description of the anti-fraud policy definition"
  type        = string
  default     = "This policy audits virtual machines not published by Canonical."
}

variable "policy_mode" {
  description = "Mode of the anti-fraud policy definition"
  type        = string
  default     = "All"
}

variable "scope" {
  description = "Scope of the policy assignment"
  type        = string
}
