#! /bin/sh

# configure terminal prompt
git clone https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
echo 'set -o vi' >> ~/.bashrc
echo 'export OSH=~/.oh-my-bash' >> ~/.bashrc
echo 'OSH_THEME="agnoster"' >> ~/.bashrc
echo 'completions=( git )' >> ~/.bashrc
echo 'aliases=( general )' >> ~/.bashrc
echo 'plugins=( git )' >> ~/.bashrc
echo 'source "$OSH"/oh-my-bash.sh' >> ~/.bashrc
echo 'bind "TAB: menu-complete"' >> ~/.bashrc

# install conda environments
conda env create -f environment.yml
conda env create -f environment-chapter7.yml
