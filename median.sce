clear all 
clc
i=imread("C:\Users\admin\Desktop\salt.png")
a=double(i)
b=a
[row col]=size(a)
for x=2:1:row-1
    for y=2:1:col-1
        b(x,y)=median(a(x-1:x+1,y-1:y+1))
    end
end
figure(1)
imshow(uint8(a))
figure(2)
imshow(uint8(b))
