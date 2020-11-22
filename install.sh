#!/bin/bash

# Check if vim-addon installed, if not, install it automatically
if hash vim-addon  2>/dev/null; then
    echo "vim-addon (vim-scripts)  installed"
else
    echo "vim-addon (vim-scripts) not installed, installing"
#    sudo apt update && sudo apt -y install vim-scripts
    sudo apt -y install vim vim-scripts terminator
fi
#sudo apt install terminator

#Install Fonts-Powerline for pretty bars
sudo apt install fonts-powerline cmatrix curl
if [  -d ~/profile_files ]; then
	rm -rf ~/profile_files 1>/dev/null 2&>1
	rm -rf ~/.vim
        rm -rf ~/fzf
fi
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone --depth 1 https://github.com/junegunn/fzf.git && cd ~/fzf &&  ~/fzf/install --completion --update-rc --key-bindings


date=$(date +%F-%H%M%S)



    mkdir -p ~/.rc_backup/dotfiles-$date && chmod -R 750 ~/.rc_backup/dotfiles-$date
	


##  files=$(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n")
##  for i in $files; do echo "## $i ## ";done

file=$(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n")

for i in $file; do
    if [ -e ~/$i ]; then
        #mv -f ~/$i-$stamp
        mv -f ~/$i ~/.rc_backup/dotfiles-$date/$i
    fi
    #ln -s $PWD/$file ~/$file
    cp -f ./$i ~/$i
    
done
cd
echo -e "Re Sourcing RCs..."
source ~/.bashrc

## find . -maxdepth 1 -name ".*" -type l  -printf "%f\n" -exec rm -rf {} \;
# https://github.com/junegunn/vim-plug

#Terminator extraction
if [ ! -d ~/.config ]; then
    mkdir -p ~/.config && chmod -R 700 ~/.config
	
fi
tar -xvf ./terminator.tar -C ~/.config/ && chown -R $USER:$USER ~/.config/terminator
