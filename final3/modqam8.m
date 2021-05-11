function [y] = modqam8(in1)
qam = [-1-1i, -2-2i, 2-2i, 1-1i, 1+1i, 2+2i, -2+2i, -1+1i];

inp = reshape(in1,[],3);
inp1 = bi2de(inp);
y = inp1;
y(inp1==0)=qam(1);
y(inp1==1)=qam(2);
y(inp1==2)=qam(3);
y(inp1==3)=qam(4);
y(inp1==4)=qam(5);
y(inp1==5)=qam(6);
y(inp1==6)=qam(7);
y(inp1==7)=qam(8);
end