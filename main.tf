module "instance" {
  source        = "git::https://github.com/prakashkukanoor/terraform-aws-ami-images.git"
  instance_type = "t2.micro"
  environment   = "QA"
  team          = "PSE"
}

output "instance_id" {
  value = module.instance.ami_image_id
}