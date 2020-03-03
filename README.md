<div align="center">

# asdf-gcloud ![Build](https://github.com/jthegedus/asdf-gcloud/workflows/Build/badge.svg) ![Lint](https://github.com/jthegedus/asdf-gcloud/workflows/Lint/badge.svg)

<a href="https://cloud.google.com/sdk/gcloud/reference" target="_blank" rel="noopener noreferrer">
    <img src="images/logo_lockup_cloud_rgb.png" height="42" align="middle" />
</a>

[GCloud CLI](https://cloud.google.com/sdk/gcloud/reference) plugin for [asdf version manager](https://asdf-vm.com).

</div>

# Quickstart

```shell
asdf plugin add gcloud
```

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- Python 2 or Python 3.
- set `CLOUDSDK_PYTHON` environment variable in your shell config to load the correct version of Python.

# Install

Plugin:

```shell
asdf plugin add gcloud
# or
asdf plugin add https://github.com/jthegedus/asdf-gcloud.git
```

GCloud:

```shell
asdf install gcloud 282.0.0
```

Set global version:

```shell
asdf global gcloud 282.0.0
```

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md) for a list of items to tackle.

[Thanks goes to these contributors](https://github.com/jthegedus/asdf-gcloud/graphs/contributors)!

# License

[MIT License](LICENSE) © [James Hegedus](https://github.com/jthegedus/)
