% Mengimpor gambar

Base = imread('Linux.jpg');
figure,imshow(Base);title('Gambar Awal')

% Impor pesan gambar dan di konversikan menjadi gambar binary
Message = imread('Pesan.png');
Msg = imbinarize(rgb2gray(Message));title('Pesan Gambar yang di sisipi')

% Mengukur ulang pesan dan gambar awal menjadi ukuran yang sama
Msg = imresize(Msg,size(Base(:,:,1)));

% Memilih bit dan mengubah menjadi sinyal pesan keluar
New = Base;
New(:,:,1) = bitset(New(:,:,1),1,Msg);

% Menyimpan File Gambar
figure,imshow(New);title('Gambar dengan pesan rahasia')
figure,imshowpair(Base,New,'montage');title('Gambar Dekripsi & Gambar yang sudah di enkripsi')
% imwrite(New,'MsgIm.bmp');
% clear all;

