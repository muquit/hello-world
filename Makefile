all: clean
	go-xbuild-go -config build-config.json
	/bin/ls -ltr ./bin

build: clean
	go build .

clean:
	/bin/rm -rf ./bin
	/bin/rm -f hello-world
