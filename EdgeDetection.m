% For Your Eyes Only
pkg load image;

frizzy = imread('D:\Educational\computerVision\usman.jpg');
froomer = imread('D:\Educational\computerVision\ahmed.jpg');
figure, imshow(frizzy);
figure, imshow(froomer);

% TODO: Find edges in frizzy and froomer images

% TODO: Display common edge pixels
g1 = rgb2gray(frizzy);
g2 = rgb2gray(froomer);

ef1 = edge(g1, 'sobel');
ef3 = edge(g1, 'canny');
ef2 = edge(g2, 'canny');
% TODO: Display common edge pixels
figure, imshow(ef1);
figure, imshow(ef3);
figure, imshow(ef2);

%imshow(ef3 & ef2);
