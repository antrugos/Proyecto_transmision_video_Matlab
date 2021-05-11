function[y]=defiltrado(x,N)
y2=[];
y3=[];
y=[];
L=8;
alfa=0.5;
w=(1+alfa)/2;
U=ceil(6*N*w)-1;
h1=rcosfir(0.5,L,U,1,'sqrt');
y2=filter(h1,1,x);
y2=y2(2*L*U+2:end);
y3=downsample(y2',U);
y=sign(real(y3))+1i*sign(imag(y3));
end

