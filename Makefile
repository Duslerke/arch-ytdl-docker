.PHONY: build
build:
	docker build -t ytdl .

.PHONY: verify
verify:
	docker run ytdl --version
