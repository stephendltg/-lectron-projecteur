#!make
PROJECT=electron-sample
VERSION=v14.16.1
NVM=v0.38.0

install: 
	@echo "Installing project ${PROJECT} ..."
	. ${NVM_DIR}/nvm.sh && nvm install ${VERSION} && nvm use ${VERSION}
	npm install

install-rasp:
	@echo "Installing for raspberry"
	sudo apt-get install libsqlite3-dev
	npm install sqlite3 --build-from-source --sqlite=/usr

clean:
	@echo "Clean project ${PROJECT}..."
  rm -rf ./dist
	rm -rf ./node_modules

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/${NVM}/install.sh | bash

help: 
	@echo "install: Install ${PROJECT}"
	@echo "clean: Clean ${PROJECT}"
	@echo "nvm: NVM install${PROJECT}"
