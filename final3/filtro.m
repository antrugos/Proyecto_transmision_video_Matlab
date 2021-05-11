function[y]=filtro(x,N)
alfa=0.5;
w=(1+alfa)/2;
R=alfa;
L=8;
U=ceil(6*N*w)-1;
T=1;
h1=rcosfir(R,L,U,T,'sqrt');
x1=x;
x2=x1';
sul=upsample(x2,U);
su=[sul zeros(1,2*L*U+1)];
y=filter(h1,1,su);
end