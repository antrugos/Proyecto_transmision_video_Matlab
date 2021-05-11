function[y]=decodificacion(demodu)
 H=[1 0 0 1 0 1 1;0 1 0 1 1 1 0;0 0 1 0 1 1 1]; 
 HT=H';
               AT=mod(demodu*HT,2);
               S1=[1 1 0];
               S2=[0 1 1];
               S3=[1 1 1];
               S4=[1 0 1];
                    if AT==S1
                    demodu =mod(demodu +[0 0 0 1 0 0 0],2);       
                    elseif AT==S2
                    demodu = mod(demodu +[0 0 0 0 1 0 0],2);
                    elseif AT==S3
                    demodu = mod(demodu +[0 0 0 0 0 1 0],2);
                    elseif AT==S4
                    demodu = mod(demodu +[0 0 0 0 0 0 1],2);
                    end 
                y = [demodu(:,4) demodu(:,5) demodu(:,6) demodu(:,7)]; %decodificamos los valores
end