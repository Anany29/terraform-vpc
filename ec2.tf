resource "aws_instance" "myaws_WP"{
        ami = "ami-0a1235697f4afa8a4"
        instance_type = "t2.micro"
        key_name = "aws_tf_ec2"
        vpc_security_group_ids = [aws_security_group.amsSGWordPress.id]
	subnet_id = aws_subnet.main.id
        tags = {
                Name = "asmworld wordpress by tf"
        }
}

resource "null_resource" "nullrm1"{
 
  provisioner "remote-exec" {
   inline = [
          "sudo yum install git httpd -y",
          "sudo yum install -y mariadb105-server mariadb105",
	  "sudo yum install -y php82 php82-mysqlnd",
          "sudo git clone https://github.com/WordPress/WordPress.git",
  	  "sudo mv WordPress/* /var/www/html",
	 "sudo chown -R apache /var/www/html",  
          "sudo systemctl restart httpd"

      ]


connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("C:/Users/prachi sharma/Downloads/aws_tf_ec2.pem")
    host     = aws_instance.myaws_WP.public_ip
  }

}
}



