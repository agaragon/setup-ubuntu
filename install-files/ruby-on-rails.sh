sudo apt update
sudo apt install -y curl gpg build-essential libssl-dev libreadline-dev zlib1g-dev

# Install GPG keys for RVM
gpg --keyserver hkp://pool.sks-keyservers.net:80 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Install RVM
curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

echo 'source ~/.rvm/scripts/rvm' >> ~/.bashrc

source ~/.bashrc

rvm install 3.3.0

rvm use 3.3.0 --default

gem install bundler

gem install rails
