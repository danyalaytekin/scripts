# Create working directories
mkdir ~/Projects

# Setup Finder
chflags nohidden ~/Library
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Git
git config --global core.editor "nano"

# Homebrew - setup
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew doctor

# Homebrew - run installers
brew install \
    autojump \
    az \
    chruby \
    curl \
    ethereum \
    ghi \
    googler \
    lynx \
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

# Homebrew casks - enable older versions
brew tap caskroom/versions

# Homebrew casks - run installers
brew cask install \
    balsamiq-mockups \
    beyond-compare \
    bitbar \
    charles \
    coconutbattery \
    daisydisk \
    doxie \
    dropbox \
    firefox \
    focus \
    gimp \
    gitify \
    gitter \
    google-chrome \
    keyboard-maestro \
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
    torbrowser \
    transmission \
    ubar \
    visual-studio-code \
    vmware-fusion

# Mac App Store - run installers
mas install \
    443987910 `#1Password` \
    1091189122 `#Bear` \
    603117688 `#CCMenu` \
    1141688067 `#CoinTick` \
    1055511498 `#DayOne` \
    587769990 `#EyeFriendly` \
    682658836 `#GarageBand` \
    1026566364 `#GoodNotes` \
    408981434 `#iMovie` \
    409183694 `#Keynote` \
    620249105 `#LaunchD` \
    441258766 `#Magnet` \
    440472232 `#NewsBar` \
    409203825 `#Numbers` \
    409201541 `#Pages` \
    407963104 `#Pixelmator` \
    634210019 `#Plisterine` \
    880001334 `#Reeder` \
    434808346 `#SimpleMind` \
    803453959 `#Slack` \
    1176895641 `#Spark` \
    1187772509 `#stts` \
    1225570693 `#UlyssesMac` \
    1147396723 `#WhatsApp` \
    497799835 `#Xcode`

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
    git-open \
    npm-check-updates \
    npm-run-all \
    pm2 \
    third-party-decode \
    yarn

# Chrome - disable navigation gestures
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# Bear - sync
open -g -a Bear
sleep 60
osascript -e 'tell application "Bear" to quit'
