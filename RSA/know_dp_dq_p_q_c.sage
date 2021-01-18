p = 
q = 
dp = 
dq = 
c = 

n = p*q
phin = (p-1)*(q-1)
dd = gcd(p-1, q-1)
d=(dp-dq)//dd * inverse_mod((q-1)//dd, (p-1)//dd) * (q-1) +dq
m = power_mod(c, d, n)
print('[+] d : {}'.format(d))
print('[+] m : {}'.format(m))
