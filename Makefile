all: clean
	go-xbuild-go -config build-config.json
	/bin/ls -ltr ./bin

release:
	go-build-go -release

build: clean
	go build .

# requires >= v1.0.9
brew:
	go-xbuild-go --brew-desc 'A hello world program'

clean:
	/bin/rm -rf ./bin
	/bin/rm -f hello-world
