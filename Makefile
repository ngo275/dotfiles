# see: http://qiita.com/shimma/items/ebeeb410ecebc22dd41e
install: create-symlinks osx homebrew homebrew-cask aws golang

create-symlinks:
	ln -fs ${CURDIR}/.config            ${HOME}/
	ln -fs ${CURDIR}/.gitignore         ${HOME}/
	ln -fs ${CURDIR}/.gitconfig         ${HOME}/
	ln -fs ${CURDIR}/.gitconfig.local   ${HOME}/
	ln -fs ${CURDIR}/.tmux.conf.osx     ${HOME}/.tmux.conf
	ln -fs ${CURDIR}/.zshrc             ${HOME}/
	ln -fs ${CURDIR}/.ideavimrc         ${HOME}/
	#ln -fs ${CURDIR}/.peco ${HOME}/
	#ln -fs ${CURDIR}/.hyper.js          ${HOME}/
	touch ${HOME}/.z
	mkdir ${HOME}/bin || true

osx:
	xcode-select --install || true
	sudo defaults write -g InitialKeyRepeat -int 14
	sudo defaults write -g KeyRepeat -int 1
	sudo defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
	# sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target / #https://stackoverflow.com/questions/52514791/after-upgrading-to-macos-mojave-gem-update-is-failing?rq=1

homebrew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap homebrew/cask-fonts
	brew tap neovim/homebrew-neovim && brew install neovim
	brew tap shopify/shopify && brew install themekit
	brew tap heroku/brew && brew install heroku
	brew cask install font-inconsolata || true
	
	brew tap neovim/homebrew-neovim
	brew install --disable-etcdir zsh         || true
	brew install ag                           || true
	brew install binutils                     || true
	brew install caskroom/cask/brew-cask      || true
	brew install coreutils                    || true
	brew install ctags                        || true
	brew install curl                         || true
	brew install findutils                    || true
	brew install git                          || true
	brew install hub                          || true
	brew install jq                           || true
	brew install mcrypt                       || true
	brew install mysql                        || true
	brew install nkf                          || true
	brew install openssl                      || true
	brew install ghq || true
	#brew install peco || true
	brew install tig                          || true
	brew install tmux                         || true
	brew install wget                         || true
	brew install xz                           || true
	brew install zsh                          || true
	brew install libxml2                      || true
	brew install grep                         || true
	brew install fzf                          || true
	brew install gsed || true
	brew install docker                       || true
	brew install docker-compose               || true

	brew cask outdated                        
	brew cask install alfred                  || true
	brew cask install cmd-eikana              || true
	brew cask install google-chrome           || true
	brew cask install google-japanese-ime     || true
	brew cask install licecap                 || true
	brew cask install spectacle               || true
	brew cask install the-unarchiver          || true
	brew cask install visual-studio-code      || true
	brew cask install charles                 || true
	brew cask install font-ricty-diminished   || true
	brew cask install font-hack-nerd-font     || true
	brew install --cask imageoptim || true
	brew update                               || true
	brew cleanup                              || true
	#ln -s $(which reattach-to-user-namespace) ~/bin/i
	apm disable tree-view

#node:
	#brew install node                         || true
	#brew install nodebrew
	#brew install yarn     
	#nodebrew install-binary latest
	#nodebrew install stable
	#nodebrew use stable

#python:
	# brew install pyenv
	# brew install pipenv
	# CONFIGURE_OPTS="--enable-shared" pyenv install 3.6.6
	# pyenv global 3.6.6
	# pip install --upgrade pip
	# pip install pynvim
	# vim -c "PlugInstall" -c ":q" -c ":q"

#ruby:
	# brew install rbenv                        || true
	# brew install reattach-to-user-namespace   || true
	# brew install ruby-build                   || true
	# brew install v8                           || true
	# sudo gem install bundler
	# bundle config build.libv8 --with-system-v8
	# bundle config build.therubyracer --with-v8-dir=/usr/local/opt/v8-315/
	# bundle config build.nokogiri --use-system-libraries
	# curl get.pow.cx | sh

golang:
	brew install go                           || true
	brew install dep                          || true
	zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
	gvm install go1.9
	gvm use go1.9 --default
	go get github.com/motemen/ghq
	go get github.com/nsf/gocode
	go get github.com/k0kubun/pp
	go get golang.org/x/tools/cmd/godoc
	go get golang.org/x/tools/cmd/goimports
	go get golang.org/x/tools/cmd/godoc
	go get github.com/golang/lint/golint

#gcloud:
	# brew install stern                        || true
	# brew cask install minikube                || true
	# brew reinstall python@2                   || true # for mojave #Homebrew/homebrew-core/issues/29176
	# curl https://sdk.cloud.google.com | bash
	# gcloud components update
	# gcloud components install kubectl
	# gcloud components install appengine-go
	# chmod 755 ~/google-cloud-sdk/platform/google_appengine/goapp
	# chmod 755 ~/google-cloud-sdk/platform/google_appengine/*.py
	#ln -s ~/google-cloud-sdk/platform/google_appengine/goapp /usr/local/bin/

# ios:
	# sudo gem install cocoapods

# aws:
# 	sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-darwin-amd64-latest && chmod 755 /usr/local/bin/ecs-cli

