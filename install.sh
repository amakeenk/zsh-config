#!/bin/bash -e

BLUE='\033[0;34m'
NC='\033[0m'

ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"

echo -e "${BLUE}remove zsh configs if exist${NC}"
rm -rf ${HOME}/.{oh-my-zsh,zsh,zshrc}

echo -e "${BLUE}install oh-my-zsh${NC}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "${BLUE}clone spaceship repo${NC}"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

echo -e "${BLUE}create spaceship.zsh-theme symlink${NC}"
ln -sv "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo -e "${BLUE}create symlink to zshrc${NC}"
ln -svf ${PWD}/zshrc ${HOME}/.zshrc

echo -e "${BLUE}all done${NC}"
