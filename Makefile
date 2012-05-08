
test:
	prove --timer

web:
	perl web/build.pl
	bin/jsx --output fib.js example/fib.jsx
	mv fib.js web/source-map/
	mv fib.js.mapping web/source-map/
	mkdir -p web/source-map/example
	cp example/fib.jsx web/source-map/example/

server:
	plackup web/app.psgi

.PHONY: test web server