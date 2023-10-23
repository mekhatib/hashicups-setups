terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.20"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.65"
    }
  }
}

provider "hcp" {
client_id     = "var.service-principal-key-client-id"
client_secret = "var.service-principal-key-client-secret"
}

provider "aws" {
  region = var.region
  default_tags {
    tags = var.default_tags
  }
}
