#!bin/bash

#rbenv
sudo apt install -y curl build-essential libssl-dev libreadline-dev zlib1g-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src

##shell環境に合わせてコメントアウトを外してください．
##ubuntu
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
#echo 'eval "$(rbenv init -)"' >> ~/.bashrc
##bash
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
#echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
##Zsh
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
#echo 'eval "$(rbenv init -)"' >> ~/.zshrc

~/.rbenv/bin/rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

#x.x.xをインストールしたいrubyバージョンに書き換えてください．
rbenv install x.x.x
rbenv global x.x.x
gem install bundler

