clc
clear all
img1 =imread("C:\Users\arvin\OneDrive\Documents\Code_by_Amit\skull.jpg");

[row col] = size(img1);
maximum = max(a);
hist = zeros(1,maximum);

for i = 1:1:row
    for j = 1:1:col
        if(img1(i,j) == 0)
            img1(i,j) = 1
        end
    end    
end

for i = 1:1:row
    for j = 1:1:col
        t = a(i,j)
        h(t) = h(t) + 1;
    end   
end

figure(1)
imshow(a)

figure(2)
bar(h)
