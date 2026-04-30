output "generated_name" {
  description = "Random name generated for this run"
  value       = random_pet.server_name.id
}

output "environment" {
  description = "Target environment"
  value       = var.environment
}

output "project" {
  description = "Project name"
  value       = var.project_name
}
