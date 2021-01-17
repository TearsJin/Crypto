# when some high bits of p is known (more than 1/2)
# can use coppersmith's method to figure out the p
n = 
high_p = # high bits of p without low zeros
pbits = 
kbits = pbits - high_p.nbits()
_p = high_p<<kbits

PR.<x> = Zmod(n)[]
f = x + _p
roots = f.small_roots(X=2^kbits,beta=0.4)

if roots:
    p = _p+int(roots[0]) 
    print("n: "+str(n))
    print("p: "+str(p))
    print("q: "+str(n//p))
