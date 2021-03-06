clear all;                                      %Se limpia el workspace
close all;                                      %Se cierran las ventanas ejecutados en matlab
clc;                                            %Se limpia la ventana de comandos
vid = VideoReader('video_Slomo.mp4');                   %Primero se lee todo el video que se usar? en el proyecto
at=vid.NumberOfFrames;
N=5;
d1=struct();
portas=struct();

for img = 1:5                 %Se emplea el ciclo for para recorrer todas las imagenes del video desde la primera hasta la ultima
    %%
    %Transmisor
    b = read(vid, img);                         %Se comienza a leer cada una de las imagenes en una matriz llamada b
    
    %figure(1)                                  %Se ubica el video a transmitir en la primer figura
    %imshow(b)                                  %Se muestra una a una las imagenes del video
    ImgVector = reshape(b, [numel(b), 1]);      %Se redimensiona la matriz de las imagenes en un vector columna
    bin = de2bi(ImgVector);                     %Se convierte el vector columna en un flujo continuo de bits (1 y 0)
    bin1 = reshape(bin, [], 4);                 %se redimensiona el flujo de bits para que sea un vector fila y salga del transmisor
    bin1 = double(bin1);
    CE=mat2cell(bin1,100*ones(1,4608),4);         %se coloca en celdas para optimizar el flujo de datos
    %%
                                                            %La variable HT que corrsponde a la matriz H transpuesta
        recor=codificacion(CE);
        modu = modqam4(recor);
        fi = filtro(modu,N);
        portas(img).a = portadoras(fi,vid,N,img);
       
end 
Portadoras_T=zeros(1,length(portas(1).a));
 for img =1:5
        %suma = sum([portas(img).a]);
        Portadoras_T=Portadoras_T+portas(img).a;
 end 

        canal=awgn4qam(Portadoras_T);
        d1=struct('a',[240,320,3]);
for img=1:5
        deportas= deportadoras(canal,vid,N,img);
        defi = defiltrado(deportas,N);
        demodu = demodqam4(defi);
        decodi=decodificacion(demodu);
        %%
        bin2= reshape(decodi, [numel(decodi)/8, 8]);       %Se redimensiona el flujo de bits a bytes al darles un formato tipo paquete de 8 bits cada uno
        d = bi2de(bin2);                                                 %Se convierte el flujo de bytes a decimales para formar el vector nuevamente
        d11 = reshape(d, 240, 320, 3);                            %Se redimensiona nuevamente el vector usando el ancho y el alto de la matriz original para recuperar la matriz "original"
        d1(img).a = uint8(d11);
        img
end
for ii = 1:5
        imshow(d1(ii).a)
        pause(0.5)
end
  
     