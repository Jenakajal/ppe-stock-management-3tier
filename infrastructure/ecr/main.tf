resource "aws_ecr_repository" "service_repos" {
  for_each = toset(var.services)

  name = "${var.project}-${each.key}"
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name    = each.key
    Project = var.project
  }
}

