function H = GaussianKernel(r,sigma) %Caution: Matlab function name should start with a LETTER
n=(r-1)/2;              %The origin has to be move at the center!
H = zeros(r,r);
s=0;
%%%%%%%%%%%%%%%
for x=-n:1:n
    i=x+n+1;       %Matlab matrix index starts at 1. No negative index
    for y=-n:1:n
        j=y+n+1;
        H(i,j)=exp(-(x^2+y^2)/(2*(sigma^2)));
        s=s+H(i,j);
    end
end
%%%%%%%%%%
for x=-n:1:n
    i=x+n+1;
    for y=-n:1:n
        j=y+n+1;
        H(i,j)= (1/s)*H(i,j);
    end
end        
%%%%%%%
end