variable "spacelift_first_account_key_id" {
  description = "API Key ID for the first Spacelift account"
  type        = string
  sensitive   = true
}

variable "spacelift_first_account_key_secret" {
  description = "API Key Secret for the first Spacelift account"
  type        = string
  sensitive   = true
}

variable "spacelift_second_account_key_id" {
  description = "API Key ID for the second Spacelift account"
  type        = string
  sensitive   = true
}

variable "spacelift_second_account_key_secret" {
  description = "API Key Secret for the second Spacelift account"
  type        = string
  sensitive   = true
}
