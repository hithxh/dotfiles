# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

defaults write -g ApplePressAndHoldEnabled -bool false

# set time format
defaults write com.apple.menuextra.clock "DateFormat" "EEE MMM d  H:mm"

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Address Book" "Calendar" "Contacts" "Dock" "Finder" "Mail" "Safari" "SystemUIServer" "iCal"; do
    killall "${app}" &> /dev/null
done
