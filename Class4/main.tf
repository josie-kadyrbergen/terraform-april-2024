provider aws {
  region = var.region
}

resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
}

variable ami_id {
  type = string
  description = "Provide ami id"
  default = ""
}

variable instance_type {
    description = "Provide instance type"
    type = string
    default = ""
}

variable region {
    description = "Provide region"
    type = string
    default = ""
}
