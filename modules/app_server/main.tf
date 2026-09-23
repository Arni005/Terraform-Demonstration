resource "aws_instance" "app" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = "app-server-${var.environment}-${count.index}"
    Environment = var.environment
  }
}