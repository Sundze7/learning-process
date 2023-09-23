clear;clc;
/*s= poly(0,'s')
P= 1/(10*s^2 + 0.1*s)
P= syslin('c',P)
disp(P)*/

num = 1;
den = poly([0 0.1 10],'s','c');
P = syslin('c',num,den)
disp(P)

//bode(P) //bode diagram
//show_margins(P)

nyquist(P)//nyquist diagram
show_margins(P,'nyquist')

//magnitude plot
//s= poly(0,'s')
//H = syslin('c',1/(1 + 0.8*s));
//gainplot(H)
