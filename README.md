<div align="center">

# asdf-gcloud ![Build](https://github.com/jthegedus/asdf-gcloud/workflows/Build/badge.svg) ![Lint](https://github.com/jthegedus/asdf-gcloud/workflows/Lint/badge.svg)

<a href="https://cloud.google.com/sdk/gcloud/reference" target="_blank" rel="noopener noreferrer">
  <img src="images/logo_lockup_cloud_rgb.png" height="42" align="middle" />
</a>

[GCloud CLI](https://cloud.google.com/sdk/gcloud/reference) plugin for [asdf version manager](https://asdf-vm.com) allowing you to pin `gcloud` versions for each GCP project.

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Default Cloud SDK Components](#default-cloud-sdk-components)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

Are tracked in [lib/dependencies.txt](lib/dependencies.txt) and checked on installation of plugin and `asdf install gcloud *`. The core dependencies are: `bash`, `curl`, `python`, `sort`, `tar`.

# Install

Plugin:

```shell
# prefer the git url method
asdf plugin add gcloud https://github.com/jthegedus/asdf-gcloud.git
# or
asdf plugin add gcloud
```

GCloud:

```shell
asdf install gcloud latest
```

Set global version:

```shell
asdf global gcloud 286.0.0
```

or if [![https://github.com/asdf-vm/asdf/pull/633](https://img.shields.io/github/pulls/detail/state/asdf-vm/asdf/633)](https://github.com/asdf-vm/asdf/pull/633) is merged:

```shell
asdf global gcloud latest
```

These commands also apply to `asdf local gcloud <version>`.

# Why?

The asdf config file, `.tool-versions`, allows pinning each tool in your project to a specific version. This ensures that ALL developers are using the same version of each tool. Same `python`, same `gcloud`, same `terraform` etc.

When you update a version in `.tool-versions`, `asdf` will prompt all users who do not have the correct versions to upgrade. This enables whole teams to update their tools in unison.

# Default Cloud SDK Components

`asdf-gcloud` can automatically install a set of Cloud SDK Components after each `asdf install gcloud <version>`. To enable this feature you must have a file that lists one COMPONENT_ID per line. For example:

```
alpha
beta
cloud-build-local
cloud-firestore-emulator
```

This file must be named `.default-cloud-sdk-components` and be at one of the following locations:

- `$HOME/.config/gcloud/.default-cloud-sdk-components`: next to gcloud auth configurations
- `$(dirname ASDF_CONFIG_FILE)/.default-cloud-sdk-components`: relative to `.asdfrc` if configured
- `$HOME/.default-cloud-sdk-components`: Home dir

Below is the list of available components (as of version `286.0.0`):

```
┌────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                 Components                                                 │
├───────────────┬──────────────────────────────────────────────────────┬──────────────────────────┬──────────┤
│     Status    │                         Name                         │            ID            │   Size   │
├───────────────┼──────────────────────────────────────────────────────┼──────────────────────────┼──────────┤
│ Not Installed │ App Engine Go Extensions                             │ app-engine-go            │  4.8 MiB │
│ Not Installed │ Appctl                                               │ appctl                   │ 17.5 MiB │
│ Not Installed │ Cloud Bigtable Command Line Tool                     │ cbt                      │  7.6 MiB │
│ Not Installed │ Cloud Bigtable Emulator                              │ bigtable                 │  6.6 MiB │
│ Not Installed │ Cloud Datalab Command Line Tool                      │ datalab                  │  < 1 MiB │
│ Not Installed │ Cloud Datastore Emulator                             │ cloud-datastore-emulator │ 18.4 MiB │
│ Not Installed │ Cloud Firestore Emulator                             │ cloud-firestore-emulator │ 40.3 MiB │
│ Not Installed │ Cloud Pub/Sub Emulator                               │ pubsub-emulator          │ 34.9 MiB │
│ Not Installed │ Cloud SQL Proxy                                      │ cloud_sql_proxy          │  3.7 MiB │
│ Not Installed │ Emulator Reverse Proxy                               │ emulator-reverse-proxy   │ 14.5 MiB │
│ Not Installed │ Google Cloud Build Local Builder                     │ cloud-build-local        │  5.9 MiB │
│ Not Installed │ Google Container Registry's Docker credential helper │ docker-credential-gcr    │  1.8 MiB │
│ Not Installed │ Kind                                                 │ kind                     │  4.4 MiB │
│ Not Installed │ Minikube                                             │ minikube                 │ 21.9 MiB │
│ Not Installed │ Skaffold                                             │ skaffold                 │ 12.9 MiB │
│ Not Installed │ anthos-auth                                          │ anthos-auth              │  8.6 MiB │
│ Not Installed │ gcloud Alpha Commands                                │ alpha                    │  < 1 MiB │
│ Not Installed │ gcloud Beta Commands                                 │ beta                     │  < 1 MiB │
│ Not Installed │ gcloud app Java Extensions                           │ app-engine-java          │ 62.3 MiB │
│ Not Installed │ gcloud app PHP Extensions                            │ app-engine-php           │ 21.9 MiB │
│ Not Installed │ gcloud app Python Extensions                         │ app-engine-python        │  6.1 MiB │
│ Not Installed │ gcloud app Python Extensions (Extra Libraries)       │ app-engine-python-extras │ 27.1 MiB │
│ Not Installed │ kpt                                                  │ kpt                      │ 18.8 MiB │
│ Not Installed │ kubectl                                              │ kubectl                  │  < 1 MiB │
│ Installed     │ BigQuery Command Line Tool                           │ bq                       │  < 1 MiB │
│ Installed     │ Cloud SDK Core Libraries                             │ core                     │ 14.1 MiB │
│ Installed     │ Cloud Storage Command Line Tool                      │ gsutil                   │  3.6 MiB │
└───────────────┴──────────────────────────────────────────────────────┴──────────────────────────┴──────────┘
```

# FAQ

```
~/.asdf/lib/commands/command-exec.bash: line 23: shim_args[@]: unbound variable
```

**This is expected** as `gcloud` requires a command. `asdf-gcloud` sets the Bash option for `nounset` variables which makes running `gcloud` without commands appear as an `asdf` error. You should always pass a command to `gcloud`.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/jthegedus/asdf-gcloud/graphs/contributors)!

# License

[MIT License](LICENSE) © [James Hegedus](https://github.com/jthegedus/)
