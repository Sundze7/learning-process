s= %s
num= (s + 1.5);
den= (40*s^3 + 56.5*s^2 + 58.5*s + 5);
G= syslin('c',num,den)

nyquist(G)
