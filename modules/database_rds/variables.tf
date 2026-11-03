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

variable "private_subnet_ids" {
  description = "DBを配置するプライベートサブネットIDのリスト (要素数2)"
  type        = list(string)
}

variable "web_security_group_id" {
  description = "通信元として許可するWebサーバーのセキュリティグループID"
  type        = string
}

variable "db_name" {
  description = "初期データベース名"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "DB管理者ユーザー名"
  type        = string
  default     = "dbadmin"
}
