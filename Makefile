ALL= git vim zsh

install: $(ALL)

check: git-exists

# test git exist
git-exists: 
	@which git > /dev/null

git: check
	@cd git && ./install.sh

vim: check
	@cd vim && ./install.sh
zsh: check
	@cd zsh && ./install.sh

.PHONY: $(ALL) check git-exists
