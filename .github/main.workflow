workflow "Hello actions" {
  on = "push"
  resolves = ["GitHub Action for Docker"]
}

action "build" {
  uses = "actions/docker/cli@master"
  args = "build -t ancs21/hello-actions ."
}
