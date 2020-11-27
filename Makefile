__PHONY__: build build-testing

build:
	docker build -t aiblocks/quickstart -f Dockerfile .

build-testing:
	docker build -t aiblocks/quickstart:testing -f Dockerfile.testing .