% For Your Eyes Only
pkg load image;

usman = imread('D:\Educational\computerVision\usman.jpg');

figure, imshow(usman), title('Original color image');


% TODO: Find edges in frizzy and froomer images

% TODO: Display common edge pixels
usmanmono = rgb2gray(usman);

figure, imshow(usmanmono), title('Original monchrome image')
h = fspecial('gaussian',[11,11],4);

figure, surf(h),title('gaussian filter');
usmansmooth = imfilter(usmanmono,h);
figure, imshow(usmansmooth), title('usman smooth');
%Method 1 shift left, shift right and show the difference of two images.
usmanL=usmansmooth
usmanL(:,[1:(end-1)])=usmanL(:,[2:end]);

usmanR=usmansmooth
usmanR(:,[2:end])=usmanR(:,[1:(end-1)]);

usmandiff = double(usmanR)-double(usmanL);
figure, imshow(usmandiff,[]), title('Differnce of right and left image');%empty vector is to compensate for negative images


%Method 2 Canny endge detector
CannyEdgeUsmanMono = edge(usmanmono,'canny');
figure, imshow(CannyEdgeUsmanMono), title('CannyEdgeUsmanMono');

CannyEdgeUsmanSmooth = edge(usmansmooth,'canny');
figure, imshow(CannyEdgeUsmanSmooth), title('CannyEdgeUsmanSmooth');

%Method3 Laplacian of Gausian
logEdgesUsman = edge(usmanmono,'log');
figure, imshow(logEdgesUsman), title('logEdgesUsman');

