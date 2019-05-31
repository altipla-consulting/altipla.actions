
# altipla.actions

Altipla Consulting repo of GitHub Actions.

- [go-release](#go-release)

## go-release

Automate publishing Go build artifacts for GitHub releases.

```
action "example" {
  uses = "altipla-consulting/altipla.actions@latest/go-release"
  secrets = ["GITHUB_TOKEN"]
}
```
