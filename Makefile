VERSION := $(shell cat VERSION)
BUILD_OPTIONS := -trimpath
LDFLAGS := -ldflags "-w -s -X 'github.com/muquit/hello-world/pkg/version.Version=$(VERSION)'"

all: clean
	go-xbuild-go -config build-config.json --build-args '$(BUILD_OPTIONS) $(LDFLAGS)'
	/bin/ls -ltr ./bin

release:
	go-xbuild-go -release

build: clean
	go build $(BUILD_OPTIONS) $(LDFLAGS)

# requires >= v1.0.9
brew:
	go-xbuild-go --brew-desc 'A hello world program'

clean:
	/bin/rm -rf ./bin
	/bin/rm -f hello-world
