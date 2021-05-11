function [y] = demodqam8(inp2)
    qam = [0,1,2,3,4,5,6,7];
    
    demod=inp2;
    demod(inp2==(-1-1i))=qam(1);
    demod(inp2==(-2-2i))=qam(2);
    demod(inp2==(2-2i))=qam(3);
    demod(inp2==(1-1i))=qam(4);
    demod(inp2==(1+1i))=qam(5);
    demod(inp2==(2+2i))=qam(6);
    demod(inp2==(-2+2i))=qam(7);
    demod(inp2==(-1+1i))=qam(8);

    sgn2=de2bi(demod);
    dem=reshape(sgn2,[],7);
    y=dem;
end