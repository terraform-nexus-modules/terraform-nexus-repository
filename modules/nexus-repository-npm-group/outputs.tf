################################################################################
# Npm Group
################################################################################
output "name" {
  description = "The name of the resource."
  value       = nexus_repository_npm_group.main.name
}
