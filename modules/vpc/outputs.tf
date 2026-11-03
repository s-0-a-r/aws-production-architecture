output "vpc_id" {
  description = "作成されたVPCのID"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "ALBおよびパブリックEC2を配置するサブネットIDのリスト"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "RDSを配置するプライベートサブネットIDのリスト"
  value       = aws_subnet.private[*].id
}
