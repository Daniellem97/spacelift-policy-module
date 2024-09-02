provider "spacelift" {
  alias            = "first-stack"
  api_key_endpoint = "https://first-account.app.spacelift.io"
  api_key_id       = var.spacelift_first_account_key_id
  api_key_secret   = var.spacelift_first_account_key_secret
}

provider "spacelift" {
  alias            = "second-stack"
  api_key_endpoint = "https://second-account.app.spacelift.io"
  api_key_id       = var.spacelift_second_account_key_id
  api_key_secret   = var.spacelift_second_account_key_secret
}
