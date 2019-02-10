[nk,k]=imhist(uint8(I));
nk=nk/(size(I,1)*size(I,2));
L=256;
for i=1:256
    Thk(i)=fllor((L-1)*sum(nk(1:i)));
end
Iout4=Tnk(I(:));
Iout4=uint8(reshape(Iout4,