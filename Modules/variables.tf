variable "env" {
    description = "This is the enviroment"
    type = string
}

variable "ami_id" {
    description = "This is the AMI id for EC2"
    type = string
}

variable "instance_type" {
    description = "This is the type of instance for EC2"
    type = string
}
variable "instance_count" {
    description = "This is the count of instance for ec2"
    type =  number
}