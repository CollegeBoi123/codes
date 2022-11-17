# codes

separateRGB
clear all
clc
a = imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\ScilabPractice\colorfulFlower.jpg")
[row col] = size(a)
r = zeros(row, col, 3)
g = zeros(row, col, 3)
b = zeros(row, col, 3)

r(:,:,1) = a(:,:,1)
g(:,:,2) = a(:,:,2)
b(:,:,3) = a(:,:,3)

figure(1)
subplot(2,2,1)
imshow(a)
title("original")
subplot(2,2,2)
imshow(uint8(r))
title("red Channel")
subplot(2,2,3)
imshow(uint8(g))
title("green channel")
subplot(2,2,4)
imshow(uint8(b))
title("blue channel")

//combine = cat(3,r,g,b)
figure(2)
//imshow((combine))
r = uint8(r)
g = uint8(g)
x = imadd(r,g)
imshow(x)

image resize
clear all
clc
a = imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\skull1.jpg")
x = imresize(a,10.0)
figure(1)
imshow(a)
figure(2)
imshow(x)
disp(size(a))
disp(size(x))
y = imresize(a,[100, 100])
figure(3)
imshow👍

Arithmetic and Logical operations
clear all
clc
a =imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\imageForHist.jpg")
a1 = imresize(a,[190, 200],'bilinear')
a3 = rgb2gray(a1)
//imshow(a3)
a2 = imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\skull1.jpg")
//disp(size(a1))
//disp(size(a2))
//disp(size(a3))

imgSum = imadd(a3,a2)
figure(1)
imshow(imgSum)
title("Image Addition")

figure(2)
imgDiff = imsubtract(a3,a2)
imshow(imgDiff)
title("Image difference")

figure(3)
imgIntersect = intersect(a3,a2)
imshow(imgIntersect)
title("Image Intersection")

aa=double(a2)
aa1 = double(a3)
m = mean(aa) //mean
disp(m)
sum=0
[row col] = size(a2)
for x=1:1:row
    for y=1:1:col
        sum = aa(x,y)+sum
    end
end
disp(sum/(row*col)) //mean

---------
clear all
clc
//a =imread("imageForHist.jpg")
a = imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\ScilabPractice\imageForHist.jpg")
a = imresize(a,[190, 200])
b = imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\skull1.jpg")
figure(1)
imshow(~(a))
figure(2)
imshow(~(b))

figure(3)
imshow(and(b))

figure(4)
imshow(and(a))

figure(5)
imshow(or(a))

figure(6)
imshow(a)
//x = a.b
//imshow(x)

[a1] = imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\ScilabPractice\imageForHist.jpg")
a1 = imresize(a,[190, 200])
//a1 = double(a1)
[b1] = imread("C:\Users\hp\Desktop\DIP_files\scilab files\scilabProg\skull1.jpg")
//b1 = double(b1)

for x = 1:1:190
    for y=1:1:200
        c(x,y) = (a1(x,y) & b1(x,y))
    end
end
figure(7)
imshow(c)

for x = 1:1:190
    for y=1:1:200
        c1(x,y) = (a1(x,y) | b1(x,y))
    end
end
figure(😎
imshow(c1)
