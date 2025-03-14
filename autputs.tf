
output "instance_public_ip" {
  description = "Public ip of instance"
  value       = aws_instance.micro_instance.public_ip

}
