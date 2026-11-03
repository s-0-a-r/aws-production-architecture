output "alb_dns_name" {
  description = "クライアントがアクセスするALBのDNS名"
  value       = module.compute_alb.alb_dns_name
}

output "rds_endpoint" {
  description = "RDSデータベースのエンドポイントアドレス"
  value       = module.database_rds.db_endpoint
}

output "secrets_manager_arn" {
  description = "DB認証情報を管理するSecrets ManagerのARN"
  value       = module.database_rds.db_secret_arn
}
