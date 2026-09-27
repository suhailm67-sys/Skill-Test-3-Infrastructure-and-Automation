output "application_public_ip" {
  description = "Public IP of the E-Commerce application"
  value       = aws_instance.ecommerce.public_ip
}

output "application_url" {
  description = "E-Commerce application URL"
  value       = "http://${aws_instance.ecommerce.public_ip}"
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.ecommerce.id
}