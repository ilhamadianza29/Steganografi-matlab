%% Impor gambar dengan gambar tersembunyi

Im = imread('MsgIm.bmp');

%% Ekstrak bitplane dari Message Signal
PesanGambar = bitget(Im(:,:,1),1);

%% Visualisasikan Pesannya
imshow(logical(PesanGambar));
