
resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Managed from Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.VPN_ID
  from_port         = var.APP_PORT
  ip_protocol       = "tcp"
  to_port           = var.APP_PORT
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.VPN_ID
  from_port         = var.SSH_PORT
  ip_protocol       = "tcp"
  to_port           = var.SSH_PORT
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.VPN_ID
  from_port         = var.FTP_PORT
  ip_protocol       = "tcp"
  to_port           = var.FTP_PORT
}

output "ftp_port" {
    value = aws_vpc_security_group_ingress_rule.ftp_port.id
}
output "ssh_port" {
    value = aws_vpc_security_group_ingress_rule.ssh_port
}