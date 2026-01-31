provider "aws"{
  region="ap-southeast2"
}

module "ec2"{
  source="./ec2_module"
}
