function [y] = awgnpam(x)
K = 4;
n = 7;
l = 1;                 
Es1 = 2*((l.^2)/2);
M = 2;
EbNo = 10;
sigma1 = sqrt((K*Es1)/(2*n*log2(M)*EbNo));
z = sigma1*randn(size(x));
y = x+z;
end