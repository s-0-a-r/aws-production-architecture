output "alb_dns_name" {
  description = "ALBのエンドポイントDNS名"
  value       = aws_lb.main.dns_name
}

output "web_security_group_id" {
  description = "後続のRDSモジュールで参照するWeb用セキュリティグループID"
  value       = aws_security_group.web.id
}
