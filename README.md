<div align="center">

# asdf-gcloud ![Build](https://github.com/jthegedus/asdf-gcloud/workflows/Build/badge.svg) ![Lint](https://github.com/jthegedus/asdf-gcloud/workflows/Lint/badge.svg)

<a href="https://cloud.google.com/sdk/gcloud/reference" target="_blank" rel="noopener noreferrer">
    <img src="images/logo_lockup_cloud_rgb.png" height="42" align="middle" />
</a>

[GCloud CLI](https://cloud.google.com/sdk/gcloud/reference) plugin for [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`, `python`
- `CLOUDSDK_PYTHON`: set this environment variable in your shell config to load the correct version of Python.

  ```shell
  python_sdk="$(command -v python)"
  export CLOUDSDK_PYTHON="${python_sdk}"
  ```

# Install

Plugin:

```shell
asdf plugin add gcloud
# or
asdf plugin add gcloud https://github.com/jthegedus/asdf-gcloud.git
```

GCloud:

```shell
asdf install gcloud 283.0.0
```

Set global version:

```shell
asdf global gcloud 283.0.0
```

# Why?

The asdf config file, `.tool-versions`, allows pinning each tool in your project to a specific version. This ensures that ALL developers are using the same version of each tool. Same `python`, same `gcloud`, same `terraform` etc.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/jthegedus/asdf-gcloud/graphs/contributors)!

# License

[MIT License](LICENSE) © [James Hegedus](https://github.com/jthegedus/)
