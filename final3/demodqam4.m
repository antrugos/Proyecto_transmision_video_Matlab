function[y] = demodqam4(sgn1)
qam = [0,1,2,3];
sgn=sgn1;
sgn(sgn1==(-1-1i))=qam(1);
sgn(sgn1==(1-1i))=qam(2);
sgn(sgn1==(-1+1i))=qam(3);
sgn(sgn1==(1+1i))=qam(4);

sgn2=de2bi(sgn);
dem=reshape(sgn2,[],7);
y=dem;
end
