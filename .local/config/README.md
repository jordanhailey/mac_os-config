# Apple Silicon Setup

## Install `brew`

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- **NOTE**: _For Apple Silicon Macs_, after installation of brew, follow prompts to add `/opt/homebrew` to `$PATH` 

## Install `gh`

```
brew install gh
```
- Following installation, authorize `gh` with the following command
	```sh
	gh auth login
	```
- Once logged in with `gh`, clone this repo with the following command 
	```sh
	cd $HOME
	gh clone jordanhailey/mac_os-config $HOME/.cfg -- --bare
	```
- After repo is cloned, attempt a `checkout`, you may have to remove/move/rename files or directories that would be overwritten (e.g. `.zprofile` at the `$HOME` directory will be overwritten by the `.zprofile` file saved in this repo).
	```sh
	alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
	config config --local status.showUntrackedFiles no
	config checkout
	```
- Once config files are in the `.local/config` directory, [run any preferred install scripts](./app_installation_instructions.md).
