provider "aws"{
  region="ap-southeast-2"
}

module "ec2"{
  source="./ec2_module"
}
