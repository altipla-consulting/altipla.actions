
# altipla.actions

Altipla Consulting repo of GitHub Actions.

- [go-release](#go-release)

## go-release

Automate publishing Go build artifacts for GitHub releases.

```
action "Publish" {
  uses = "altipla-consulting/altipla.actions/go-release@master"
  env = {
    BINARY_NAME = "foo"
  }
  secrets = ["GITHUB_TOKEN"]
}
```
