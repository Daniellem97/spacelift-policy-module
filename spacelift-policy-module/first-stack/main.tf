provider "spacelift" {
  alias = "first-stack"
}

resource "spacelift_policy" "login_policy" {
  provider = spacelift.first-stack
  name     = "Login Policy"
  type     = "LOGIN"
  body     = "package spacelift"
}
