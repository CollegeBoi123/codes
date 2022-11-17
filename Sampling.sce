clear all;
clc;
a=imread("C:\Users\admin\Downloads\DIP\skull.jpg")
[row,col]=size(a);
i=1;
j=1;
for(x=1:2:row)
    for y=1:2:col
        c(i,j)=a(x,y);
        j=j+1;
    end
    j=1;
    i=i+1;
end
figure(1);
imshow(a);
m=size(a)
disp(m);
figure(2);
imshow(c);
n=size(c)
disp(n)
