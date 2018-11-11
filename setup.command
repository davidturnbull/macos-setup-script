# Ensure that ~/.bash_profile exists
touch ~/.bash_profile

# Install Command Line Tools
xcode-select --install

# Homebrew

## Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## taps
brew tap caskroom/versions

## brews
brew install bash-completion
brew install git
brew install mas
brew install wget
brew install yarn --without-node
brew install youtube-dl

## casks
brew cask install dropbox
brew cask install firefox-developer-edition
brew cask install the-unarchiver
brew cask install tower
brew cask install transmission
brew cask install visual-studio-code

# nvm

## Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

## Ensure that "nvm" command is available
source ~/.bash_profile

## Install latest version of node
nvm install node
nvm use node

# ~/.bash_profile

## Enable bash-completion
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile

## Use brews rather than defaults
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

git config --global user.email "david@davidturnbull.com"
git config --global user.name "David Turnbull"

# Disable OS X Gate Keeper
sudo spctl --master-disable
sudo defaults write /var/db/SystemPolicy-prefs.plist enabled -string no
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Expand the "Save" panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Quit the "Printer" app when print is finished
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Check for software updates daily, not weekly
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable smart quotes and smart dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable warning when changing file extnsion
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable snap-to-grid on icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Auto-hide the dock and remove the hiding delay
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# Prevent Time Machine from asking if a newly connected drive is a back-up volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Transmission: Don't prompt for download confirmation
defaults write org.m0k.transmission DownloadAsk -bool false

# Transmission: Send torrent files to trash
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Transmission: Hide the "Donate" message
defaults write org.m0k.transmission WarningDonate -bool false

# Transmission: Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false
