
workflow "release" {
  on = "release"
  resolves = ["go-release"]
}

action "go-release" {
  uses = "./src/go-release"
  env = {
    BINARY_FOLDER = "./testdata/cmd/actions-test"
  }
  secrets = ["GITHUB_TOKEN"]
}
