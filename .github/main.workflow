workflow "Hello actions" {
  on = "push"
  resolves = ["build"]
}


action "build" {
  uses = "actions/docker/cli@master"
  args = "build -t ancs21/hello-actions ."
}
