//Publisher Details
output "publisher_name" {
  description = "Name of the Publisher"
  value       = netskope_publishers.Publisher.name
}

output "publisher_public_ip" {
  description = "Public IP of the Publisher"
  value       = aws_instance.NPAPublisher.public_ip
}

output "publisher_private_ip" {
  description = "Public IP of the Publisher"
  value       = aws_instance.NPAPublisher.private_ip
}

output "publisher_token" {
  description = "Public IP of the Publisher"
  value       = netskope_publishers.Publisher.token
}
