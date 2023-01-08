variable "puerto_servidor" {
  description   = "Puerto para las instancias EC2"
  type          = number
  default       = 8080

  validation {
    condition = var.puerto_servidor > 0 && var.puerto_servidor <= 65536
    error_message = "El valor del puerto debe estar comprendido entre 1 y 65536."
  }
}
variable "puerto_lb" {
  description   = "Puertos para el Load Balancer"
  type          = number
  default       = 80
}
variable "tipo_instancia" {
  description   = "Tipos de la instancia EC2"
  type          = string
  default       = "t2.micro"
}

variable "ubuntu_ami" {
  description = "AMI por region"
  type = map(string)

  default = {
    us-east-1 = "ami-0b5eea76982371e91"
    us-east-2 = "ami-0b5eea76982371e91"
  }
}