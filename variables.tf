variable "aws_region" {
  description = ""
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = ""
  type        = string
  default     = "tf114"
}

variable "instance_type" {
  description = ""
  type        = string
  default     = "t2.micro"
}

variable "key-pair" {
  description = ""
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDgtCzgbAaVPYGHBk9/zqwO4r+xiKVY5fI9WDc7M6k6MXZW3sPoG+pgK98sl3+kCwGtJgIhSWnJytuYNoEhgoaurEik4Py2b/vPx2iip3x2hz6habhTi0j4T1Mc4bmT1B8OVW3QfYaCZDpU/of5E0rf7ybXUJv16hkqcCxF6qer7ycGlcysuAHJG1z38D91NWSCqaGWymp8kp6m8fJHGddBqJLbQOTMCxmUqbdpE0b9CGlSBqcAqvWUy8pJYb/mhvj09iHnq3HjGRwFNmfG2fEY95gmRP4gp/6z/YIj/NrxW9XsDwNNaO6RPMgDr+RX+UQyPVOpLgqBK6l3IG5yseh8j0OzJeJ8klAxW14EzW0rM/ETziPOnodn+6lzXd5VbzJyDKEQZathnCSqwVA64Q+CR3w6UWyvWIxSJtruUHEsIC7Z2A02Ym2Je2xwZkz+/8TzXiBdkAeTqtdpalq8/yCCidbNt7YEfgkJat0SBaj7axNMRRPSHgOXK5oFOBUwQrk= vitor@PR-FOZ-NB009"

  sensitive = true
}

variable "mx_password" {
  description = ""
  type        = string
  default     = "Password1!"
}