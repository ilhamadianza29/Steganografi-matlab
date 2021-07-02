% Mengimpor gambar

Awal = imread('Linux.jpg');
figure,imshow(Awal);title('Gambar Awal')

% Impor pesan gambar dan di konversikan menjadi gambar binary
Pesan = imread('Pesan.png');
Msg = imbinarize(rgb2gray(Pesan));title('Pesan Gambar yang di sisipi')

% Mengukur ulang pesan dan gambar awal menjadi ukuran yang sama
Msg = imresize(Msg,size(Awal(:,:,1)));

% Memilih bit dan mengubah menjadi sinyal pesan keluar
Sinyal_Pesan = Awal;
Sinyal_Pesan(:,:,1) = bitset(Sinyal_Pesan(:,:,1),1,Msg);

% Menyimpan File Gambar
figure,imshow(Sinyal_Pesan);title('Gambar dengan pesan rahasia')
figure,imshowpair(Awal,Sinyal_Pesan,'montage');title('Gambar Dekripsi & Gambar yang sudah di enkripsi')
% imwrite(New,'MsgIm.bmp');
% clear all;

