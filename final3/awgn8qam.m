function [y] = awgn8qam(x)
K = 4;
n = 7;
l = sqrt(2);
l1 = sqrt(8);
Es = (4*((l.^2)/16)) + (4*((l1.^2)/16));
M = 4;
EbNo = 10;
sigma1 = sqrt((K*Es)/(2*n*log2(M)*EbNo));
z = sigma1*randn(size(x));
y = x+z;
end