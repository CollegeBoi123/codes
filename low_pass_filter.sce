clear all
clc
aa=imread("C:\Users\rcset\Desktop\Seemran13526 HRC\Sem5\DIP\Scilab Programs\skull1.jpg")
ab=imnoise(aa,"gaussian"); 
a=double(ab)

w=[1 1 1; 1 1 1; 1 1 1]/9
[row col] = size(a);
for x=2:1:row-1
  for y=2:1:col-1
    al(x,y) = w(1)*a(x-1,y-1)+w(2)*a(x-1,y)+w(3)*a(x-1,y+1)+w(4)*a(x,y-1)+w(5)*a(x,y)+w(6)*a(x,y+1)+w(7)*a(x+1,y-1)+w(8)*a(x+1,y)+w(9)*a(x+1,y+1);
  end
end

figure(1)
imshow(uint8(a))
figure(2)
imshow(uint8 (al))
