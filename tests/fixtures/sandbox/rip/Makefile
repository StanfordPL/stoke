all: extract testcase sandbox

extract:
	stoke extract -i ./test_nibble -o bins > /dev/null

testcase:
	stoke testcase --bin ./test_nibble --fxn nibble_sort_alexander4 -o nibble.tc > /dev/null

sandbox:
	stoke debug sandbox --target bins/nibble_sort_alexander4.s --testcases nibble.tc | grep "SIGNAL 0" > /dev/null

clean:
	rm -rf bins nibble.tc
