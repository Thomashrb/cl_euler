##
# Project Title euler

build/euler: build *.pony
	ponyc --debug -o build -b euler

build:
	mkdir build

test: build/euler
	build/euler

run:
	build/euler

clean:
	rm -rf build

.PHONY: clean test
# end
