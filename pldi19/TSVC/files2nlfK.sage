f = open("/tmp/filee73V9p.out", 'w')
rows=1
cols=18
ZZ=IntegerRing()
A = MatrixSpace(ZZ, rows, cols)([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9223372036854775808, 9216169926303015760, 16, -921870150625286144, -9216169926303015760])
D,U,V=A.smith_form()
min_dim = min(rows,cols)
diagonals = [ D[i][i] for i in range(0,min_dim) if D[i][i] != 0]
nz_diag = len(diagonals)
bv_len = len(V.rows())
basis = [ [0]*nz_diag + [0]*i + [1] + [0]*(bv_len-nz_diag-i-1) for i in range(0,bv_len-nz_diag)]
dim = len(basis)
outputs = [ V*vector(b) for b in basis ]
print >>f, len(outputs), len(outputs[0])
print "test"
for output in outputs:
	print >>f, " ".join(map(lambda x:str(x), output))
f.close()


