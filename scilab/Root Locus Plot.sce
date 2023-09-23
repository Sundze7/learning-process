//ROOT LOCUS PLOT
clear; clc;
s= %s
//G= 100/(s*(s^2 + 15*s + 90));
//evans(G)

P= (s + 3)/(s*(s^2 + 7*s + 10));
evans(P)
sgrid
[kmax,s] = kpure(P)
disp(s)
disp(kmax)
