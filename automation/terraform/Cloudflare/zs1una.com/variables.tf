variable "domain" {
  default     = "zs1una.com"
  description = "DNS domain being configured (required)"
  type        = string 
}

variable "dkim" {
  default     = ""
  description = "DKIM key (optional)"
  type        = string
}

variable "dmarc" {
  default     = ""
  description = "DMARC specification (optional)"
  type        = string
}

variable "google_site_verification" {
  default     = ""
  description = "Google site verification TXT record value (optional)"
  type        = string
}

