terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.3.0"
}

resource "random_pet" "server_name" {
  length    = 2
  separator = "-"
}

resource "null_resource" "test" {
  triggers = {
    name = random_pet.server_name.id
  }
}
