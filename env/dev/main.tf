terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket  = "tf-090546215541"
    key     = "lab-youtube-devopspro-aws-terraform/dev/lab-youtube-devopspro-aws-terraform.tfstate"
    region  = "us-west-2"
    #profile = "dev"
  }

  #cloud {
  #  organization = "rsalesfreitas"
  #  workspaces {
  #    name = "aws-iaac-foundation-shared"
  #  }
  #}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

provider "aws" {
  #profile             = "dev"
  region              = "us-west-2"
  allowed_account_ids = ["090546215541"]


  default_tags {
    tags = {
      "iaac"       = "yes"
      "monitoring" = "yes"
      "tier"       = "dev"
      "ambiente"   = "dev"
    }
  }
}