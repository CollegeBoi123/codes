clear all
clc

img1=imread("C:\Users\admin\Downloads\DIP\skull.jpg");
[row,col]=size(img1);
gamma=input('Enter the correction factor:');
img=double(img1);
for i=1:row
    for j=1:col
        nuimg(i,j)=img(i,j)^gamma                                                                                                                               
    end    
end

numax=max(max(nuimg));
numin=min(min(nuimg));

n=255/(numax-numin);
for i=1:row
    for j=1:col
        nuimg1(i,j)=n*(nuimg(i,j)-numin);                                   
    end    
end

nuimg2=uint8(nuimg1);
subplot(2,1,1)
imshow(img1)
title('Orginal Image')
subplot(2,1,2)
imshow(nuimg2)
title("Image after power transformation")
