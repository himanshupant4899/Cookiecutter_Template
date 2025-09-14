terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "{{cookiecutter.aws_provider_version}}"
    }
  }
{% if cookiecutter.tf_enable_remote_reference == "true" %}
  backend "s3" {
    key    = "terraform.tfstate"
    region = "{{cookiecutter.aws_region}}"
}
{%- else -%}
  backend "local" {
    path = "terraform.tfstate"
  }
{% endif %}
}

# Configure the cloud Provider
provider "aws" {
  region = "{{cookiecutter.aws_region}}"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

