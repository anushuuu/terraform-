variable "image_id" {
  type = string
  default = "ami-041e2ea9402c46c32"
  description = "RHCL-9 AMI ID"
}

variable "instance_type" {
    default =  "t3.micro"
    type = string
}

variable "tags" {
  default = {
    project = "Expense"
    Environment = "Dev"
    Module = "DB"
    name = "DB"
        
    }                
}

variable "sg_name" {
    default = "allow_ssh"
  
}

variable "sg_description" {
    default = "allowing port 22 "
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
   type = list(string)
   default = ["0.0.0.0/0"]
}