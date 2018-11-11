# Ensure that ~/.bash_profile exists
touch ~/.bash_profile

# Install Command Line Tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# taps
brew tap caskroom/versions

# brews
brew install bash-completion
brew install git
brew install mas
brew install wget
brew install yarn --without-node
brew install youtube-dl

# casks
brew cask install appcleaner
brew cask install dropbox
brew cask install firefox-developer-edition
brew cask install the-unarchiver
brew cask install tower
brew cask install transmission
brew cask install visual-studio-code

# Install nvm/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bash_profile
nvm install node
nvm use node

# Enable bash-completion
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile

# Use brews rather than defaults
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# Configure git
git config --global user.email "david@davidturnbull.com"
git config --global user.name "David Turnbull"

# Remove default icons from Dock
defaults write com.apple.dock persistent-apps -array

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Restart dock
killall Dock
