
all: new1 new2

new1: orig
	stoke replace -i orig --rewrite result.s -o new1

new2: new1
	stoke replace -i new1 --rewrite result.s -o new2

clean:
	rm -f new1 new2
