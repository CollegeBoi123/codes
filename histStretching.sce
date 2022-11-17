clear all
clc
a=imread("C:\Users\admin\Desktop\almonds.jpg")
[row,col]=size(a)

w=(min(a))
constant=255/(max(max(a))-min(min(a)))
for i=1:1:row
    for j=1:1:col
        c(i,j)=constant*(a(i,j)-w)
    end
end
h=zeros(1,max(a))
for i=1:1:row
    for j=1:1:col
        if(a(i,j)==0)
            a(i,j)=1
        end
    end
end
for i=1:1:row
    for j=1:1:col
        t=a(i,j)
        h(t)=h(t)+1
    end
end
figure(1)
bar(h)
figure(2)
imshow(a)
h=zeros(1,max(c))
for i=1:1:row
    for j=1:1:col
        if(c(i,j)==0)
            c(i,j)=1
        end
    end
end
for i=1:1:row
    for j=1:1:col
        t=round(c(i,j))
        h(t)=h(t)+1
    end
end
figure(3)
bar(h)
figure(4)
imshow(c)
