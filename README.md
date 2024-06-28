# About This Repository

Have you ever tried to use multiple repositories from the same vendor (GitHub, BitBucket, GitLab, ...) but with different SSH keys? _Well, that's not easy._

Indeed, your SSH agent will probably only support automatically one key per domain. However, you can assign specific keys to each repository with adequate git configuration settings ([`core.sshCommand`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-coresshCommand)).

This repository contains a collection of shell scripts to facilitate git repositories management with multiple SSH keys.

# Scripts

Most scripts will guide you through the process.

## Add All SSH Keys to the Agent

In case your agent loses track of some of your keys, you can all them all at once with this script. Keys must be stored in `~/.ssh` (which is the default SSH folder).

Usage:

```shell
ssh-add-all-keys.sh
```

## Cloning a Repository

Clones a repository and assigns a SSH key to it. The specified repository will be cloned in a sub-folder.

Usage:

```shell
gcssh <git_ssh_uri>
```

## Adding a New Remote to an Existing Repsitory

Adds a new remote to an existing repository and assign a specific SSH key to it. You must execute this script from the folder of the repository.
Useful if the git repository has been initialized locally and not cloned.

Usage:

```shell
garssh <git_remote_ssh_uri>
```

## Adding a Submodule to an Existing Repository

Adds a submodule to an existing repository and assign a specific SSH to it. You must execute this script for the folder of the repository.

Usage:

```shell
gasmssh <git_submodule_ssh_uri>
```

## Initializing Submodules for an Existing Repository

In some cases, submodules must be initialized with the SSH key of the repository. This script is designed for that. You must execute this script for the folder of the repository.

Usage:

```shell
gismssh
```

## Assign a SSH key to an Existing Repository

This script sets the SSH key to use for a repository. You must execute this script for the folder of the repository.

Usage:

```shell
gsetsshcfg
```
