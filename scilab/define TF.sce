num = 1;
den = %s^2 + %s;
G = syslin('c',num,den)
disp(G)
r = roots(den)
disp(r)

G1= syslin('c',1,%s+2);
G2= syslin('c',4,%s);

disp(G1*G2) // series connection
disp(G1+G2) // parallel connection
disp(G1/G2) // feedback connection
