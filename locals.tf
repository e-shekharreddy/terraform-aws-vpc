locals {
    common_tags = {
        project = var.project 
        environment = var.environment
        terraform = "true"

    }
    vpc_fina_tags = merge(
                    local.common_tags,
                    {
                        name = "${var.project}-${var.environment}"
                    },
                    var.vpc_tags

                    )
}