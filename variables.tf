variable "enabled" {
  description = "Flag to enable or disable the sending of emails"
  default     = "true"
}

variable "from" {
  description = "From address for email"
}

variable "to" {
  description = "Email recipients"
  type        = string
}

variable "subject" {
  description = "Email subject template"
}

variable "body" {
  description = "Email body template"
}

variable "host" {
  description = "SMTP Host"
  default     = "email-smtp.us-east-1.amazonaws.com"
}

variable "port" {
  description = "SMTP Port"
  default     = "587"
}

variable "command" {
  description = "Command to execute"
  default     = "node"
}

variable "script_path" {
  description = "Command to execute"
  default     = "/scripts/sendEmail.js"
}

variable "region" {
  description = "The region of SES"
  default     = "us-east-1"
}
