terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.15.0"  # Make sure this matches the desired provider version
    }
  }
}
provider "spacelift" {
  alias            = "first-stack"
  api_key_endpoint = "https://gtestlogin.app.spacelift.io"
  api_key_id       = var.spacelift_first_account_key_id
  api_key_secret   = var.spacelift_first_account_key_secret
}

resource "spacelift_policy" "login_policy" {
  provider = spacelift.first-stack
  name     = "Login Policy"
  type     = "LOGIN"
  body     = "package spacelift2"
}

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
