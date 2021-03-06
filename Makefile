.PHONY: dependencies install run

build:
	go build -o bin/wtf

install:
	go clean
	go install -ldflags="-X main.version=$(shell git describe --always --abbrev=6) -X main.date=$(shell date +%FT%T%z)"
	which wtf

run: build
	bin/wtf
