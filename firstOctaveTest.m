pkg load image
img=imread('usman.jpg');
img2=imread('Ahmed.jpg');
imgresized=imresize(img2,[410 491]);
img3 = img/2+imgresized/2;
imshow(img3);
disp(size(img));
disp(size(img2));
disp(class(img));
%plot(img(:,:));
%disp(img(101:103, 201:203));
