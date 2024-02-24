variable "region"{
    description = "Define a região do nosso terraform"
    default = "us-east-1"
}

variable "vpc_cidr"{
    description = "Define o bloco de endereços da VPC"
    default = "10.0.0.0/16"
}

variable "public-subnet-1-cidr"{
    description = "Define o bloco de endereços da subnet publica 1"
}

variable "public-subnet-2-cidr"{
    description = "Define o bloco de endereços da subnet publica 2"
}

variable "public-subnet-3-cidr"{
    description = "Define o bloco de endereços da subnet publica 3"
}

variable "private-subnet-1-cidr"{
    description = "Define o bloco de endereços da subnet publica 1"
}

variable "private-subnet-2-cidr"{
    description = "Define o bloco de endereços da subnet publica 2"
}

variable "private-subnet-3-cidr"{
    description = "Define o bloco de endereços da subnet publica 3"
}