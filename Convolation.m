I= imread('/Users/jared/Desktop/proc_img/img-dataset/Dataset/4.2.04.tiff');
I=rgb2gray(I);
imfinfo('/Users/jared/Desktop/proc_img/img-dataset/Dataset/4.2.04.tiff');
%512 512
I=im2double(I);
mask=ones(3,3)/9;
%a = ([1 2 3; 4 5 6; 7 8 10])/9;
a=([3,3,3;3,3,3;3,3,3])/10;

%filter image
im_f=filter2(a,I);

figure(1);
subplot(231),imshow(I),title('Original');
subplot(232),imshow(im_f),title('Filtering Image');


