i=imread('/Users/jared/Desktop/proc_img/img-dataset/Dataset/4.2.04.tiff');

img=rgb2gray(i);
r=imread('/Users/jared/Desktop/proc_img/img-dataset/Dataset/test.jpg');

Ref=rgb2gray(r);

M=zeros(256,1,'uint8');% maping-casted. %
cdf1=cumsum(imhist(img))/numel(img); 
cdf2=cumsum(imhist(Ref))/numel(Ref); 


fun_acumul=255.*cdf1;
plot(fun_acumul)
%hist(fun_acumul)


%computing%
for r=1:256
    [~,s]=min(abs(cdf2(r)-cdf1));
    M(r)=s-1; %1-to 256%
end

out=M(double(img)+1);

%imshow(uint8(f));


%
%figure(1);
%set(gcf,'position',get(0,'ScreenSize'));
%subplot(231),imshow(img),title('Original');
%subplot(232),imshow(Ref),title('Ref img');
%subplot(233),imshow(out),title('Final img');
%display the histograms
%subplot(234),imhist(img),title('Histogram :Original Image');
%subplot(235),imhist(Ref),title('Histogram :Reference Image');
%subplot(236),imhist(out),title('Histogram :Final Image');
%


