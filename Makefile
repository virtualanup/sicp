.PHONY: all build repl down

APPNAME="SICP Playbook"

# target: all - Display help
all:
	@echo -e "\nMakefile for $(APPNAME)\nSyntax:\n"
	@echo -e "make <option>\n"
	@egrep -o "^# target:.*" [Mm]akefile | sed 's/# target: /    /'
	@echo ""

# target: build - Build the docker container
build:
	docker build -t scheme .

# target: repl - Start scheme in repl mode
repl:
	docker run --rm -i -t scheme guile

# target: run file=<filename> Run the file
.PHONY: run
run:
	docker run --rm -i -t -v $(PWD):/source scheme guile /source/$(file)
