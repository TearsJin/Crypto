import random

d = 
e = 
n = 

k = e * d - 1

r = k
t = 0
while True:
    r = r // 2
    t += 1
    if r % 2 == 1:
        break

success = False

for i in range(1, 101):
    g = random.randint(0, n)
    y = power_mod(g, r, n)
    if y == 1 or y == n - 1:
        continue

    for j in range(1, t):
        x = power_mod(y, 2, n)
        if x == 1:
            success = True
            break
        elif x == n - 1:
            continue
        else:
            y = x

    if success:
        break
    else:
        continue

if success:
    p = gcd(y - 1, n)
    q = n / p
    print ('P: ' + '%s' % p)
    print ('Q: ' + '%s' % q)
else:
    print ('Cannot compute P and Q')
