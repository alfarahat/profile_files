#!/bin/bash

# Check if vim-addon installed, if not, install it automatically
if hash vim-addon  2>/dev/null; then
    echo "vim-addon (vim-scripts)  installed"
else
    echo "vim-addon (vim-scripts) not installed, installing"
#    sudo apt update && sudo apt -y install vim-scripts
    sudo apt -y install vim-scripts
fi
#sudo apt install terminator

#Install Fonts-Powerline for pretty bars
sudo apt install fonts-powerline cmatrix

stamp () {

date=$(date +%F-%H%M%S)
echo $date

}
if [ ! -d ~/.rc_backup ]; then
    mkdir -p ~/.rc_backup && chmod -R 750 ~/.rc_backup
	
fi

##  files=$(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n")
##  for i in $files; do echo "## $i ## ";done

file=$(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n")
for i in $file; do
    if [ -e ~/$i ]; then
        #mv -f ~/$i-$stamp
        mv -f ~/$i ~/.rc_backup/$i-$(stamp)
    fi
    #ln -s $PWD/$file ~/$file
    cp -f ./$i ~/$i
    
done

echo -e "Re Sourcing RCs..."
source ~/.bashrc

## find . -maxdepth 1 -name ".*" -type l  -printf "%f\n" -exec rm -rf {} \;
