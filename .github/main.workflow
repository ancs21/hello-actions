workflow "Hello actions" {
  on = "push"
  resolves = [
    "GitHub Action for Docker",
  ]
}

action "Build Docker image" {
  uses = "docker://docker:stable"
  args = ["build", "-t", "ancs21/hello-actions", "."]
}
