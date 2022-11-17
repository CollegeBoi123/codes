clear all
clc
aa=imread("C:\Users\arvin\OneDrive\Documents\Code_by_Amit\skull.jpg");
a=double(aa);
b=(max(max(a)));
disp(b);
i=input("How many bits do you want 1 2 4 8 : ");
j=b/(2^i);
disp(j);
F=floor(a/(j+1));
F1=(F*255)/max(max(F));
figure(1)
imshow(uint8(aa))
figure(2)
imshow(uint8(F1))
