# osticket stack

A fully automated deployment pipeline for osTicket on AWS EC2 using Terraform, Ansible, Docker, and GitHub Actions.<br/>
Designed for learning infrastructure-as-code and cloud provisioning best practices with DNS and HTTPS via Cloudflare and Certbot.

## :trophy: Features

- Provision osTicket in AWS EC2 with HTTPS
- Fully automated with Terraform, Ansible, Docker and GitHub Actions
- Uses Cloudflare for DNS and Certbot for TLS

## :rocket: Step-by-step

### 1. Setup remote backend for Terraform

In your HCP account:
1. Create an organization
2. Create a workspace and set variables:
   - **AWS_REGION**
   - **AWS_ACCESS_KEY_ID** (sensitive)
   - **AWS_SECRET_ACCESS_KEY** (sensitive)
4. Create API token

Check out [Terraform Cloud docs](https://developer.hashicorp.com/terraform/cloud-docs) for more.

### 2. Setup your repository

#### 2.1. Fork this repository
Fork this repository.<br/>
Set your organization and workspace names up in [main.tf](main.tf) (`cloud { ... }` block)

#### 2.2. Set up environment
Create new environment called **_production_** (Settings - Environments - New environment).<br/>
Add following secrets and variables into your created environment.

| Name                   | Type       | Description                       |
| ---------------------- | ---------- | --------------------------------- |
| AWS_REGION             |  variable  | AWS region for creating resources |
| AWS_ACCESS_KEY_ID      |  secret    | AWS access key ID                 |
| AWS_SECRET_ACCESS_KEY  |  secret    | AWS secret access key             |
| TF_API_TOKEN           |  secret    | Terraform API token               |
| CLOUDFLARE_API_TOKEN   |  secret    | Cloudflare API token              |
| CLOUDFLARE_ZONE_ID     |  secret    | Cloudflare Zone ID                |
| EC2_PRIVATE_KEY        |  secret    | Private key of a SSH key pair     |
| EC2_PUBLIC_KEY         |  secret    | Public key of a SSH key pair      |
| DOMAIN_NAME            |  variable  | Your domain name                  |
| EMAIL                  |  variable  | Your email address                |

### 3. Deploy and configure

Go to the "Actions" tab and run "**1. Deploy and configure**" workflow manually

### :checkered_flag: Clean up

After you finish don't forget to clean your resources up.<br/>
Run "**2. Clean up resources**" workflow for that matter.

## Components

1. Docker
2. ...
