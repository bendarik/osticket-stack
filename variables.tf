variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
}

variable "cloudflare_api_token" {
  type        = string
  description = "Cloudflare API token with permissions to manage DNS records"
  sensitive   = true
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Cloudflare zone ID for the domain"
}

variable "domain_name" {
  type        = string
  description = "Domain name for the DNS record"
}

variable "deployer_ssh_public_key" {
  type        = string
  description = "Public SSH key for the deployer (ubuntu user) to access the EC2 instance"
  sensitive   = true
}