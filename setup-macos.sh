# Create working directories
mkdir ~/Projects

# Git
git config --global core.editor "nano"

# Homebrew - setup
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew doctor

# Homebrew - run installers
brew install \
    autojump \
    chruby \
    curl \
    ethereum \
    ghi \
    googler \
    mas \
    mono \
    mplayer \
    namebench \
    peco \
    nvm \
    ruby-install \
    tree \
    wget \
    wiki

# Homebrew casks - run installers
brew cask install \
    balsamiq-mockups \
    beyond-compare \
    bitbar \
    charles \
    coconutbattery \
    daisydisk \
    dropbox \
    firefox \
    gitter \
    google-chrome \
    itsycal \
    microsoft-office \
    mist \
    postman \
    qlmarkdown \
    qlstephen \
    sketch \
    sourcetree \
    spotify \
    steam \
    textexpander \
    tidal \
    transmission \
    visual-studio-code \
    vmware-fusion

# Mac App Store - run installers
mas install \
    620249105 `#LaunchD` \
    409183694 `#Keynote` \
    441258766 `#Magnet` \
    634210019 `#Plisterine` \
    434808346 `#SimpleMind` \
    682658836 `#GarageBand` \
    407963104 `#Pixelmator` \
    443987910 `#1Password` \
    880001334 `#Reeder` \
    497799835 `#Xcode` \
    409203825 `#Numbers` \
    409201541 `#Pages` \
    1147396723 `#WhatsApp` \
    1091189122 `#Bear` \
    408981434 `#iMovie` \
    587769990 `#EyeFriendly` \
    1176895641 `#Spark` \
    803453959 `#Slack` \
    1225570693 `#UlyssesMac` \
    1026566364 `#GoodNotes` \
    1187772509 `#stts` \
    603117688 `#CCMenu` \
    1055511498 `#DayOne`

# Ruby
ruby-install 2.4
chruby 2.4
gem install \
    bundler \
    travis \
    quoth

# Node
nvm install 8
nvm use 8
npm install -g \
    create-react-app \
    ddg-terminal \
    npm-check-updates \
    yarn

# Chrome - disable navigation gestures
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# Bear - sync
open -g -a Bear
sleep 60
osascript -e 'tell application "Bear" to quit'
