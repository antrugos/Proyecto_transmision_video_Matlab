function [X,f]=spectrum(x,fs)
l=length(x);
L=2^nextpow2(l);
X=fft(x,L)/fs;
X=fftshift(X);
X=abs(X);
f=linspace(-0.5*fs,0.5*fs,length(X));
end