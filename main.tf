module "dev-app" {
    source = "./Modules"
    env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-0ea3c35c5c3284d82"
    instance_count = 1
}

module "staging-app" {
    source = "./Modules"
    env = "staging"
    instance_type = "t2.medium"
    ami_id = "ami-0ea3c35c5c3284d82"
    instance_count = 2
}

module "prod-app" {
    source = "./Modules"
    env = "production"
    instance_type = "t2.large"
    ami_id = "ami-0ea3c35c5c3284d82"
    instance_count= 3
}