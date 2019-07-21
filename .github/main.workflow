workflow "Hello actions" {
  on = "push"
  resolves = [
    "build",
    "Docker Push ",
  ]
}

action "build" {
  uses = "actions/docker/cli@master"
  args = "build -t ancs21/hello-actions ."
}

action "Docker Hub Login" {
  uses = "actions/docker/login@86ff551d26008267bb89ac11198ba7f1d807b699"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "Docker Push " {
  uses = "actions/docker/cli@master"
  needs = ["Docker Hub Login", "build"]
  runs =  ["push", "ancs21/hello-actions"]
}
