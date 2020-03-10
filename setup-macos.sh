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
git config --global push.default current

# Homebrew - setup
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
brew tap caskroom/versions

# Homebrew casks - install software
brew cask install \
    amethyst \
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
    dupeguru \
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
    hyper \
    imageoptim \
    kdiff3 \
    keybase \
    keyboard-maestro \
    itsycal \
    jetbrains-toolbox \
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
    1225570693 `#UlyssesMac` \
    1147396723 `#WhatsApp` \
    410628904 `#Wunderlist` \
    497799835 `#Xcode`

# Ruby
ruby-install ruby 2.5
chruby 2.5
gem install \
    bundler \
    quoth

# Node
nvm install 10
nvm use 10

# Node - packages
npm install -g \
    create-react-app \
    ddg-terminal \
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
