terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.15.0"
    }
  }
}

provider "spacelift" {
  alias = "second-stack"
}

resource "spacelift_policy" "login2" {
  provider = spacelift.second-stack
  name     = "login2"
  type     = "LOGIN"
  body     = "package spacelift"
}
