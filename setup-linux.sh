# Create working directories
mkdir ~/Projects

# apt - install packages
sudo apt install \
    autojump \
    libimage-exiftool-perl \
    lynx \
    redis-server \
    translate-shell

# Linuxbrew - setup
mkdir ~/Projects
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -r ~/.bashrc && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bashrc

# Linuxbrew - run installers
brew install \
    chruby \
    googler \
    nvm \
    peco \
    ruby-install

# Ruby
ruby-install ruby 2.5
chruby 2.5
gem install \
    bundler \
    travis \
    quoth
