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
}

resource "random_pet" "server_name" {
  length    = 2
  separator = "-"
}

resource "null_resource" "ctm_trigger_test" {
  triggers = {
    always_run = timestamp()
  }
}
