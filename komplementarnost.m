clear all
close all
clc
b=0;
a=dlmread('ukonacno.txt');
for i=1:511
    for j=1:14
        if a(i,j)==false
            k(i,j)=true;
        else if a(i,j)==true
                k(i,j)=false;
            end
        end
    end
end
for i=1:511
    for j=1:511
        if k(i,:)==a(j,:)
            b=b+1;
            disp(a(j,:));
            komplementarne(b,:)=a(j,:);
        end
    end
end
dlmwrite('komplementarne.txt',komplementarne);
