resource "aws_instance" "server1" {
    availability_zone = "us-east-1a"
    ami = "ami-045269a1f5c90a6a0"
    #associate_public_ip_address = false
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ws.id]
    user_data = file("code.sh")
    subnet_id = aws_subnet.priv1.id
    tags = {
        Name = "Webserver-1"
    }
  
}
resource "aws_instance" "server2" {
    availability_zone = "us-east-1b"
    ami = "ami-045269a1f5c90a6a0"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.ws.id]
    user_data = file("code.sh")
    subnet_id = aws_subnet.priv2.id
    tags = {
        Name = "Webserver-2"
    }
  
}
# generate keypair
resource "tls_private_key" "tls" {
    algorithm = "RSA"
    rsa_bits = 2048
}
resource "aws_key_pair" "key" {
    key_name = "wpkey"
    public_key = tls_private_key. tls.public_key_openssh
}
resource "local_file" "key1" {
    filename = "wpkey.pem"
    content = tls_private_key.tls.private_key_pem
    file_permission = 400
}
    



