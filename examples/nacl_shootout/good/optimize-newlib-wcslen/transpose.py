#!/usr/bin/python

import csv, sys
rows = list(csv.reader(sys.stdin))
writer = csv.writer(sys.stdout)
for col in xrange(0, len(rows[0])):
    writer.writerow([(row[col] if col < len(row) else "") for row in rows])
