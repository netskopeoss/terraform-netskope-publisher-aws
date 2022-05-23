//Publisher Details
output "publisher_name" {
  description = "Name of the Publisher"
  value       = netskope_publishers.Publisher.name
}

output "publisher_id" {
  description = "ID of the Publisher"
  value       = netskope_publishers.Publisher.id
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

output "ec2_instance_id" {
  description = "Instance Id of the EC2 Instance used for the Publisher"
  value       = aws_instance.NPAPublisher.id
}
