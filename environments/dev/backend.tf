terraform {
  # S3ネイティブロック (use_lockfile) を利用する場合は Terraform >= 1.10.0 を推奨します
  required_version = ">= 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }

  # 第7章で作成したS3バケット名を指定してバックエンドを有効化します。
  # 方式A: S3ネイティブロック (Terraform 1.10以降推奨)
  # backend "s3" {
  #   bucket       = "YOUR-TERRAFORM-STATE-BUCKET-NAME"
  #   key          = "dev/terraform.tfstate"
  #   region       = "ap-northeast-1"
  #   encrypt      = true
  #   use_lockfile = true
  # }

  # 方式B: DynamoDBロックテーブル (従来方式)
  # backend "s3" {
  #   bucket         = "YOUR-TERRAFORM-STATE-BUCKET-NAME"
  #   key            = "dev/terraform.tfstate"
  #   region         = "ap-northeast-1"
  #   dynamodb_table = "terraform-state-lock"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}
