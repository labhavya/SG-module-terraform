output "sg_id_out" {
  value       = aws_security_group.sg.id
  
}

output "bastion_sg" {
  value       = aws_security_group.bastion.id
  
}
