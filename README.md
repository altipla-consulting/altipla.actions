
# altipla.actions

Altipla Consulting repo of GitHub Actions.


## go-release-1.12

Automate publishing Go build artifacts for GitHub releases.

```yaml
on: 
  release:
    types: [created]

jobs:
  release:
    name: release
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master

    - uses: altipla-consulting/altipla.actions/go-release-1.12@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        COMMAND: .
```


## go-release-1.13

Automate publishing Go build artifacts for GitHub releases.

```yaml
on: 
  release:
    types: [created]

jobs:
  release:
    name: release
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master

    - uses: altipla-consulting/altipla.actions/go-release-1.13@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        COMMAND: .
```


## go-release-1.14

Automate publishing Go build artifacts for GitHub releases.

```yaml
on: 
  release:
    types: [created]

jobs:
  release:
    name: release
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master

    - uses: altipla-consulting/altipla.actions/go-release-1.14@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        COMMAND: .
```


## go-release-1.21

Automate publishing Go build artifacts for GitHub releases.

```yaml
on: 
  release:
    types: [created]

jobs:
  release:
    name: release
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master

    - uses: altipla-consulting/altipla.actions/go-release-1.21@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        COMMAND: .
```
