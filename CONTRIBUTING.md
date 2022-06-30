# Contributing

## Setup

1. `git clone https://github.com/jthegedus/asdf-gcloud.git`
2. `asdf install`

## Structure

- `bin/*`: asdf plugin functions
- `lib/dependencies.txt`: list of dependencies required for this plugin to execute and install the tool as well as the tool's dependencies.
- `lib/helpers.bash`: helper functions that are asdf-gcloud specific
- `lib/utils.bash`: utility functions that are asdf-plugin agnostic

## Testing Locally

### Manual

```shell
asdf plugin remove gcloud
asdf plugin add gcloud .
asdf install gcloud 285.0.1
```

### asdf plugin tests

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]
asdf plugin test gcloud https://github.com/jthegedus/asdf-gcloud.git gcloud --version
```

Tests are automatically run in GitHub Actions on push and PR.
