output "db_endpoint" {
  description = "RDSインスタンスのエンドポイントアドレス"
  value       = aws_db_instance.main.endpoint
}

output "db_secret_arn" {
  description = "DB認証情報を格納したSecrets ManagerのARN"
  value       = aws_secretsmanager_secret.db_credentials.arn
}
