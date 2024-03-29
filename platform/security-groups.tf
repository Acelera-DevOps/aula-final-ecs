resource "aws_security_group" "ecs_security_group" {
    name =  "${var.ecs_cluster_name}-SG"
    vpc_id = data.terraform_remote_state.infra.outputs.vpc_id
    ingress {
        from_port   = 32768
        to_port     = 65535
        protocol    = "TCP"
        cidr_blocks = [data.terraform_remote_state.infra.outputs.vpc_cidr_block]
    }
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "TCP"
        cidr_blocks  = [var.internet_cidr_blocks]
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = [var.internet_cidr_blocks]
}
        tags = {
            Name = "${var.ecs_cluster_name}-SG"
        }
}

resource "aws_security_group" "ecs_alb_security_group" {

    name =  "${var.ecs_cluster_name}-ALB-SG"
    vpc_id = data.terraform_remote_state.infra.outputs.vpc_id
    description = "Security group do ECS para nosso alb"

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "TCP"
        cidr_blocks = [var.internet_cidr_blocks]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = [var.internet_cidr_blocks]
    }
  
}
