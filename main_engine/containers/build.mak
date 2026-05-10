build:
	docker build -t latex:latest -f run.dockerfile .

run:
	docker run -it --rm -v ${PWD}:/doc latex:latest
	docker run -p 58404:58404 latex-server

serve: build run

make build
make run
make serve