# Create working directories
mkdir ~/Projects

# Setup Finder
chflags nohidden ~/Library
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Disable window animations
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

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
    exiftool \
    ghi \
    googler \
    golang \
    lynx \
    mas \
    mono \
    mplayer \
    namebench \
    peco \
    nvm \
    redis \
    ruby-install \
    translate-shell \
    tree \
    wget \
    wiki

# Homebrew casks - enable older versions
brew tap caskroom/versions

# Homebrew casks - install software
brew cask install \
    authy \
    balsamiq-mockups \
    beyond-compare \
    bitbar \
    blender \
    charles \
    cheatsheet \
    coconutbattery \
    daisydisk \
    discord \
    doxie \
    dropbox \
    firefox \
    focus \
    gimp \
    gitify \
    gitter \
    google-chrome \
    hyper \
    imageoptim \
    kdiff3 \
    keybase \
    keyboard-maestro \
    itsycal \
    jetbrains-toolbox \
    microsoft-office \
    mist \
    notion \
    postman \
    qlmarkdown \
    qlstephen \
    sketch \
    sketchpacks \
    skype \
    sourcetree \
    spotify \
    steam \
    tidal \
    torbrowser \
    transmission \
    ubar \
    visual-studio-code \
    vlc \
    vmware-fusion \
    zeplin

# Homebrew casks - install fonts
brew tap caskroom/fonts
brew cask install \
    font-inconsolata

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
    410628904 `#Wunderlist` \
    497799835 `#Xcode`

# Ruby
ruby-install ruby 2.5
chruby 2.5
gem install \
    bundler \
    travis \
    quoth

# Node
nvm install 8
nvm use 8

# Node - packages
npm install -g \
    create-react-app \
    ddg-terminal \
    git-open \
    newman \
    npm-check-updates \
    npm-run-all \
    nyc \
    pm2 \
    redis-commander \
    serve \
    third-party-decode \
    yarn

# Rust
curl https://sh.rustup.rs -sSf | sh

# Rust - packages
cargo install \
    urlencode

# Chrome - disable navigation gestures
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# Bear - sync
open -g -a Bear
sleep 60
osascript -e 'tell application "Bear" to quit'
