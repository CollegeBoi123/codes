clear all
clc

aa=imread("E:\5th sem\DIP\Lung.jpeg");
a=double(aa);
[row,col]=size(a);
for x=1:1:row
    for y=1:1:col
        c(x,y)=aa(x,y)*((-1)^(x+y));
    end    
end

d=abs(fft2(c));
d_log=log(1+d);
figure(1);
imshow(d);
figure(2);
imshow(d_log);
