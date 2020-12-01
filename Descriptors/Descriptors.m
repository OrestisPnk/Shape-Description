close all;
clear;

I = imread('leaf.jpg');
I = rgb2gray(I);


[c,I]=fdescriptors(I);

% c=c+(40+50*(1i));
%c=c*exp(pi/2*1i);
%c=c*0.5;


%Num, number of descriptors. Give 1,2,4,8,..,256,512,..3499
Num=8;
ischema= reconstruct(c,Num);
figure, imshow(imcomplement(bwperim(I)));
hold on, plot(ischema,'b');

figure ;
plot(ischema,'b');