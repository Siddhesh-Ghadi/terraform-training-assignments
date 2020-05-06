resource "random_password" "password" {
  length = 8
  special = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
  min_special = 1
  min_lower = 1
  min_upper = 1
}

output "Message" {
  value = format("Hi %s, your password is %s", var.user, random_password.password.result)
  description = "Custome message"
}