# Create working directories
mkdir ~/Projects

# Setup Finder
chflags nohidden ~/Library
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Setup Dock
defaults write com.apple.dock tilesize -int 24; killall Dock

# Disable window animations
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# Git
git config --global core.editor "nano"
git config --global push.default current

# Homebrew - setup
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew analytics off
brew analytics
brew update
brew doctor

# Homebrew - run installers
brew install \
    autojump \
    az \
    bash-completion \
    cbmbasic \
    chruby \
    cloc \
    curl \
    ddgr \
    defaultbrowser \
    ethereum \
    exiftool \
    fdupes \
    ghi \
    ghq \
    git \
    git-open \
    github-markdown-toc \
    googler \
    golang \
    jq \
    libxml2 \
    lynx \
    mariadb \
    mas \
    mono \
    mplayer \
    m-cli \
    mysql \
    nativefier \
    namebench \
    nsnake \
    p7zip \
    peco \
    python3 \
    pyenv \
    pyenv-virtualenv \
    nvm \
    redis \
    rename \
    ruby-install \
    shellcheck \
    terraform \
    tldr \
    translate-shell \
    travis \
    tree \
    wget \
    wiki
brew cleanup
brew doctor

# Homebrew casks - enable older versions
brew tap homebrew/cask-versions

# Homebrew casks - install software
brew cask install \
    amethyst \
    android-file-transfer \
    atext \
    authy \
    balsamiq-mockups \
    barrier \
    beyond-compare \
    bitbar \
    blender \
    blisk \
    ccmenu \
    charles \
    cheatsheet \
    coconutbattery \
    cronnix \
    daisydisk \
    deezer \
    discord \
    docker \
    doxie \
    dropbox \
    firefox \
    flotato \
    focus \
    gfxcardstatus \
    gimp \
    gitify \
    github \
    gitkraken \
    gitter \
    google-chrome \
    hazel \
    hyper \
    iina \
    imageoptim \
    iterm2 \
    keybase \
    keyboard-maestro \
    itsycal \
    jetbrains-toolbox \
    microsoft-edge \
    microsoft-office \
    mist \
    mysqlworkbench \
    ngrok \
    notion \
    pock \
    postman \
    qlmarkdown \
    qlstephen \
    sequel-pro \
    signal \
    sip \
    sketch \
    sketchpacks \
    skype \
    sourcetree \
    spectacle \
    spotify \
    steam \
    tidal \
    tor-browser \
    transmission \
    tunnelblick \
    ubar \
    visual-studio \
    visual-studio-code \
    visual-studio-code-insiders
    vlc \
    vmware-fusion10 \
    zeplin

# Homebrew casks - install fonts
brew tap caskroom/fonts
brew cask install \
    font-inconsolata

# Set up VS Code extensions
for app in code code-insiders
do
    $app --install-extension ms-azuretools.vscode-docker # docker
    $app --install-extension mikestead.dotenv # dotenv
    $app --install-extension eamodio.gitlens # gitlens
    $app --install-extension ms-vscode.go #go
    $app --install-extension ziyasal.vscode-open-in-github # open in github
    $app --install-extension ms-vsliveshare.vsliveshare-pack # vs liveshare
    $app --install-extension ms-vscode-remote.vscode-remote-extensionpack # ssh
done

# Mac App Store - run installers
mas install \
    443987910 `#1Password` \
    1091189122 `#Bear` \
    603117688 `#CCMenu` \
    1141688067 `#CoinTick` \
    641027709 `#ColorPicker` \
    1055511498 `#DayOne` \
    1032755628 `#DuplicateFileFinder` \
    587769990 `#EyeFriendly` \
    682658836 `#GarageBand` \
    1026566364 `#GoodNotes` \
    408981434 `#iMovie` \
    409183694 `#Keynote` \
    620249105 `#LaunchD` \
    441258766 `#Magnet` \
    1295203466 `#MicrosoftRemoteDesktop` \
    440472232 `#NewsBar` \
    409203825 `#Numbers` \
    823766827 `#OneDrive` \
    409201541 `#Pages` \
    407963104 `#Pixelmator` \
    634210019 `#Plisterine` \
    880001334 `#Reeder` \
    434808346 `#SimpleMind` \
    803453959 `#Slack` \
    1176895641 `#Spark` \
    1187772509 `#stts` \
    412141729 `#TypeIt4Me` \
    1225570693 `#UlyssesMac` \
    1147396723 `#WhatsApp` \
    497799835 `#Xcode`

# Nudge to download KDiff3
open https://download.kde.org/stable/kdiff3

# Ruby
ruby-install ruby 2.5
chruby 2.5
gem install \
    bundler \
    quoth

# Node
nvm install 12
nvm use 12

# Node - packages
npm install -g \
    create-react-app \
    express-generator \
    git-open \
    newman \
    npm-check-updates \
    npm-run-all \
    nyc \
    pa11y \
    pa11y-ci \
    pm2 \
    redis-commander \
    serve \
    serverless \
    third-party-decode \
    yarn

# Deno
curl -L https://deno.land/x/install/install.py | python

# Rust
curl https://sh.rustup.rs -sSf | sh

# Rust - packages
cargo install \
    urlencode

# Python - packages
pip install \
    # If this doesn't produce a working version, use sudo -H pip install awscli
    # Don't install awscli using Homebrew
    awscli \
    python-gitlab

# Perl - manual setup - press enter at each prompt
cpan

# VS Code - setup
cpan Perl::LanguageServer


# Chrome - disable navigation gestures
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# Bear - sync
open -g -a Bear
sleep 60
osascript -e 'tell application "Bear" to quit'
