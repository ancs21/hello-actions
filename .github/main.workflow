workflow "Hello actions" {
  on = "push"
}

action "Build Docker image" {
  uses = "docker://docker:stable"
  args = ["build", "-t", "ancs21/hello-actions", "."]
}
