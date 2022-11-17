//main.tf

resource "aws_instance" "computel"{
	ami = data.aws_ami.ubuntu.id
	instance_type = var.instance_type
	key_name = var.key_name
	subnet_id = var.subnet_id

	tags = {
		Name = "AWSInstance.Computel"
	}
}
