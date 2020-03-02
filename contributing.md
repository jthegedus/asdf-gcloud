# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]
asdf plugin test gcloud https://github.com/jthegedus/asdf-gcloud.git gcloud --version
```

Tests are automatically run in GitHub Actions on push and PR.

## Todo

- [ ] make versions fetching robust (no hard-coded next page tokens)
- [ ] perform checksum once downloaded
- [ ] uninstall script: https://cloud.google.com/sdk/docs/uninstall-cloud-sdk
- [ ] add `$HOME/.asdf/shims` as search location in `gcloud.plugin.zsh` - https://github.com/ohmyzsh/ohmyzsh/blob/9ce7de9f16ba894423bc5105c7e959894ca2e751/plugins/gcloud/gcloud.plugin.zsh#L7
