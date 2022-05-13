# Apple Silicon Setup

Recommended to follow the README steps _prior to_ cloning this repo, if `gh` is already configured on the MacOS device, skip to [the third subheading below](#clone-this-repo).

## Install `brew`

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
> _**NOTE**: _For Apple Silicon Macs_, after installation of brew, follow prompts to add `/opt/homebrew` to `$PATH`_

## Install `gh`

```
brew install gh
```
- Following installation, authorize `gh` with the following command
	```sh
	gh auth login
	```

## Clone this repo
- Once logged in with `gh`, clone this repo with the following command 
	```sh
	cd $HOME
	gh repo clone jordanhailey/mac_os-config $HOME/.cfg -- --bare
	```

- After repo is cloned, attempt a `checkout`
	```sh
	alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
	config config --local status.showUntrackedFiles no
	config checkout
	```
	> _**NOTE**: You may have to remove/move/rename files or directories that would be overwritten. For instance `.zprofile` at the `$HOME` directory will be overwritten by the `.zprofile` file saved in this repo._
- Once config files are in the `.local/config` directory, [run any preferred install scripts](./app_installation_instructions.md).
