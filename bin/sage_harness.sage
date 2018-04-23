import fileinput
import sys

for line in fileinput.input():
	execfile(line.strip())
	print "OK"
	sys.stdout.flush()

