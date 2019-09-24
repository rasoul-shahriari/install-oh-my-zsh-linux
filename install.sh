apt install zsh

echo "================================================================="
echo "Zsh installed"
echo "================================================================="


sudo chsh -s /usr/bin/zsh $USER
echo "================================================================="
echo "Zsh is default now"
echo "================================================================="


apt install wget git

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

echo "================================================================="
echo "oh-my-zsh installed"
echo "================================================================="

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc

git clone https://github.com/powerline/fonts.git

cd fonts

./install.sh
echo "================================================================="
echo "Powerline fonts Installed"
echo "================================================================="

cd ..

DIR="$(cd "$(dirname "$0")" && pwd)"
find "$DIR"/ -type f -name '.*' -exec cp -pv {} ~/.zshrc \;

source ~/.zshrc

apt install ruby-full
gem install colorls


