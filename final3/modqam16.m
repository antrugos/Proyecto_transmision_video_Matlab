function [sgn]=modqam16(x)
qam=[-3+3i, -3+1i, -3-3i, -3-1i, -1+3i, -1+1i, -1-3i, -1-1i, 3+3i, 3+1i, 3-3i, 3-1i, 1+3i, 1+1i, 1-3i, 1-1i];
sgn0 =reshape(x,[],4);
sgn1 = bi2de(sgn0);
sgn = sgn1;
sgn(sgn1==0)=qam(1);
sgn(sgn1==1)=qam(2);
sgn(sgn1==2)=qam(3);
sgn(sgn1==3)=qam(4);
sgn(sgn1==4)=qam(5);
sgn(sgn1==5)=qam(6);
sgn(sgn1==6)=qam(7);
sgn(sgn1==7)=qam(8);
sgn(sgn1==8)=qam(9);
sgn(sgn1==9)=qam(10);
sgn(sgn1==10)=qam(11);
sgn(sgn1==11)=qam(12);
sgn(sgn1==12)=qam(13);
sgn(sgn1==13)=qam(14);
sgn(sgn1==14)=qam(15);
sgn(sgn1==15)=qam(16);
end
