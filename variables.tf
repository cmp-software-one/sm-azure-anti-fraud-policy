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

variable "subscription_id" {
 type   = string
 description  = "The value of the subscription for assigning the policy"
}
variable "tenant_id" {
    type = string
    description = "Azure Tenant ID"
}
variable "client_id" {
    type = string
    description = "Azure AD Application ID"
}
variable "client_secret" {
    type = string
    sensitive = true
    description = "Azure AD Application Secret"
}