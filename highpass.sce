clear all
clc
a=imread("C:\Users\arvin\OneDrive\Documents\Code_by_Amit\skull.jpg")
[row col]=size(a)
a=double(a)
b=a
mask=[-1 -1 -1;-1 8 -1;-1 -1 -1]
for i=2:1:row-1
    for j=2:1:col-1
        m=sum(mask .* (a(i-1:i+1,j-1:j+1)))
        if(m>=0) then
            b(i,j)=m
        else
            b(i,j)=0
        end
    end
end

b=uint8(b)
figure(1)
imshow(uint8(a));
figure(2)
imshow(uint8(b));
