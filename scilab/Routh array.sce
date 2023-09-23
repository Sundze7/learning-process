clear; clc;
s= %s; //defines s as polynomial variable
//P = s^8 + s^7 + 12*s^6 + 22*s^5 + 39*s^4 + 59*s^3 + 48*s^2 + 38*s + 20; //defining xtic equation
//P = s^5 - 13*s^3 + 36*s;
P= s^4 + 2*s^3 + s*2 - 2*s - 2
[routh_array, sign_changes] = routh_t(P)// the variables routh_array stores and sign_changes store routh array and number sign changes repectively
disp(routh_array)
disp(sign_changes)
