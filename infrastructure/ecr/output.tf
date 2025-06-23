output "ecr_repos" {
  value = [for repo in aws_ecr_repository.service_repos : repo.repository_url]
}

