variable "project_name" {
  description = "プロジェクト名"
  type        = string
}

variable "environment" {
  description = "環境名 (dev, stg, prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC全体のCIDRブロック (例: 10.0.0.0/16)"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "パブリックサブネットのCIDRリスト (要素数2)"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "プライベートサブネットのCIDRリスト (要素数2)"
  type        = list(string)
}

variable "availability_zones" {
  description = "サブネットを分散配置するAZのリスト (例: [\"ap-northeast-1a\", \"ap-northeast-1c\"])"
  type        = list(string)
}
