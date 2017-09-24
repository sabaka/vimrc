#!/bin/bash

MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"  # absolutized and normalized
if [ -z "$MY_PATH" ] ; then
    exit 1
fi
echo "Ran from $MY_PATH"

RUNTIME_DIR=~/.vim
CONFIG_FILE=~/.vimrc
BUNDLE_DIR=$RUNTIME_DIR/bundle
### Backup existed .vimrc and create new

if [ -d "$RUNTIME_DIR" ]; then
  echo "~/.vim directory found. will rename it to .vim.bak for you"
  mv ~/.vim ~/.vim.bak
  RC=$?
  if [ $RC -ne 0 ]; then
      echo "Can't move ~/.vim directory to ~/.vim.bak. Probably backup already exists" 
      exit $RC
  fi
fi

mkdir ~/.vim

if [ -e "$CONFIG_FILE" ]; then
  echo "~/.vimrc file found. will rename it to .vimrc.bak for you"
  mv ~/.vimrc ~/.vimrc.bak
  RC=$?
  if [ $RC -ne 0 ]; then
      echo "Can't move ~/.vimrc file to ~/.vimrc.bak. Probably backup already exists" 
      exit $RC
    fi
fi

## Install pathogen
echo "Installing pathogen..."
mkdir -p ~/.vim/autoload
mkdir -p $BUNDLE_DIR 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cat > ~/.vimrc <<-EOF
execute pathogen#infect()
EOF

echo "Moving configs to ~/.vim/"
## Move basic config
mkdir -p ~/.vim/vimrcs
cp $MY_PATH/vimrcs/config.vim $RUNTIME_DIR/vimrcs/config.vim
cp $MY_PATH/vimrcs/mappings.vim $RUNTIME_DIR/vimrcs/mappings.vim
cp $MY_PATH/vimrcs/filetypes.vim $RUNTIME_DIR/vimrcs/filetypes.vim
cp $MY_PATH/custom_config.vim $RUNTIME_DIR/custom_config.vim

cat >> ~/.vimrc <<-EOF

source $RUNTIME_DIR/vimrcs/config.vim
source $RUNTIME_DIR/vimrcs/mappings.vim
source $RUNTIME_DIR/vimrcs/filetypes.vim

try
source $RUNTIME_DIR/custom_config.vim
catch
endtry

EOF

## Install theme
echo "Installing color scheme (solarized dark)"
git clone git://github.com/altercation/vim-colors-solarized.git $BUNDLE_DIR/solatized

cat >> ~/.vimrc <<-EOF

syntax enable
set background=dark
colorscheme solarized

EOF

## Install plugins
echo "Going to install plugins from plugins.lst"
cd $BUNDLE_DIR
while read p; do
  git clone $p
done <$MY_PATH/plugins.lst
cd $MY_PATH

cp $MY_PATH/vimrcs/plugins_config.vim $RUNTIME_DIR/vimrcs/plugins_config.vim

mkdir $RUNTIME_DIR/temp_dirs

cat >> ~/.vimrc <<-EOF

source $RUNTIME_DIR/vimrcs/plugins_config.vim

EOF

echo "Installation completed"


