ALL= vim zsh

install: $(ALL)

check: git-exists

# test git exist
git-exists: 
	@which git > /dev/null

vim: check
	@cd vim && ./install.sh
zsh: check
	@cd zsh && ./install.sh

.PHONY: $(ALL) check git-exists

# test zsh exist
# git pull .oh-my-zsh
# intall plugin for zsh
# git pull pathogen
# install pathogen packet
# ln -s .vimrc .zshrc
