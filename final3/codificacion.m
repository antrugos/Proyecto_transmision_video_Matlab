function[y]=codificacion(x)
G=[1 1 0 1 0 0 0;0 1 1 0 1 0 0;1 1 1 0 0 1 0;1 0 1 0 0 0 1]; 
    y=[];
    for i = 1:4608                                                 
        BI=x{i,:};
        cd = mod(BI*G,2);
        y = [y;cd]; 
    end
end