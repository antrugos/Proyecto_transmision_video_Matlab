function [sgn]=modqam4(x)
qam=[-1-1i, 1-1i,-1+1i,1+1i];
sgn0 =reshape(x,[],2);
sgn1 = bi2de(sgn0);
sgn = sgn1;
sgn(sgn1==0)=qam(1);
sgn(sgn1==1)=qam(2);
sgn(sgn1==2)=qam(3);
sgn(sgn1==3)=qam(4);
end
