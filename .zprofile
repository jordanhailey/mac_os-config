# Setup 'config' alias to save config files
## https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME/'

# Load Homebrew (install required)
## Installation steps https://mac.install.guide/homebrew/index.html
## Uncomment line below when using a Apple Silicon chip 
# eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.9
## The original version is saved in .zprofile.pysave
## Uncomment line below when using Python 3+
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
