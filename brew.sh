# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,nstall if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Install packages
apps=(
    git
)

brew install "${apps[@]}"

caskapps=(
    alfred
    iterm2
    visual-studio-code
)

brew install --cask "${caskapps[@]}"

brew cleanup