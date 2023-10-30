# Creating a Null Resource and Provisioners
resource "null_resource" "name" {
  depends_on = [module.ec2_public]
  connection {
    type        = "ssh"
    host        = aws_eip.bastion_eip.public_ip
    user        = "ec2-user"
    password    = ""
    private_key = file("private-key/hm-keypair.pem")
  }

  # File Provisioner: Copying the source keypair file to the destination
  provisioner "file" {
    source      = "private-key/hm-keypair.pem"
    destination = "/tmp/hm-keypair.pem"
  }
  # Remote Exec Provisioner: Using remote-exec provisioner fix the private key permissions on Bastion Host
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/hm-keypair.pem"
    ]
  }
}
