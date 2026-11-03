variable "project_name" {
  description = "プロジェクト名"
  type        = string
}

variable "environment" {
  description = "環境名"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "ALBとEC2を配備するパブリックサブネットIDのリスト"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2インスタンスタイプ"
  type        = string
  default     = "t3.micro"
}
