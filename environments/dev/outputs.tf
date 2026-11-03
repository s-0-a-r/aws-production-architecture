output "vpc_id" {
  description = "第9章のFlow Logs設定で使用するVPC ID"
  value       = module.vpc.vpc_id
}

output "alb_dns_name" {
  description = "Webアクセス確認用ALB DNS名"
  value       = module.compute_alb.alb_dns_name
}

output "db_endpoint" {
  description = "RDSインスタンスのエンドポイント"
  value       = module.database_rds.db_endpoint
}

output "secrets_manager_arn" {
  description = "DB認証情報を管理するSecrets ManagerのARN"
  value       = module.database_rds.db_secret_arn
}
