# when we know m0 that m = m0 + x 
# and the x must meet |x| < N^(1/e)
# then we can figure out the x
n = 
e = 
c = 
m0 = 
kbits = # bits of m unknow 

for i in range(1,11):
    b = i * .1
    PR.<x> = PolynomialRing(Zmod(n))
    f = (m0 + x)^e - c
    try:
        x0 = f.small_roots(X=2^kbits, beta=b)[0]
        print("m:", m0 + x0)
        break
    except:
        print('beta = {}, can not find x'.format(b))
        
