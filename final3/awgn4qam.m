function [y] = awgn4qam(x)
K = 4;
n = 7;
l = 1;                 
Es = 4*((l.^2)/16);
M = 4;
EbNo = 10;
sigma1 = sqrt((K*Es)/(2*n*log2(M)*EbNo));
z = sigma1*randn(size(x));
y = x+z;
end