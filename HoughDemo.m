pkg load image

img = imread('D:\Educational\computerVision\usman.jpg');
gs = rgb2gray(img);
edges = edge(gs,'canny');

figure, imshow(img), title('original image');
figure, imshow(gs), title('GS image');;
figure, imshow(edges), title('edge image');

% 1. apply hough transform to find candidate lines
[accum theta rho]=hough(edges);

% octave function imagesc is different than matlab as

figure, imagesc(theta,rho, accum), title('Hough image');

%2. Find peaks in hough accumulator matrix
peaks=houghpeaks(accum, 100);


hold on;
plot(theta(peaks(:,2)), rho(peaks(:,1)),'rs');
hold off;

disp(size(peaks));

line_segs = houghlines(edges, theta, rho, peaks);
disp(size(line_segs));

figure, imshow(img), title ('Line segments');
hold on;
for k = 1:length(line_segs)
  endpoints=[line_segs(k).point1; line_segs(k).point2];
  plot(endpoints(:,1),endpoints(:,2),'LineWidth',2,'Color','green');
end;
hold off;
peaks=houghpeaks(accum, 100, 'Threshold', ceil(0.6 * max(accum(:))),'NHoodSize',[5,5]);

hold on;
plot(theta(peaks(:,2)), rho(peaks(:,1)),'rs');
hold off;

disp(size(peaks));

line_segs = houghlines(edges, theta, rho, peaks);
disp(size(line_segs));

figure, imshow(img), title ('Line segments');
hold on;
for k = 1:length(line_segs)
  endpoints=[line_segs(k).point1; line_segs(k).point2];
  plot(endpoints(:,1),endpoints(:,2),'LineWidth',2,'Color','green');
end;

line_segs = houghlines(edges, theta, rho, peaks, 'FillGap',50,'MinLength',100);
disp(size(line_segs));

figure, imshow(img), title ('Line segments');
hold on;
for k = 1:length(line_segs)
  endpoints=[line_segs(k).point1; line_segs(k).point2];
  plot(endpoints(:,1),endpoints(:,2),'LineWidth',2,'Color','green');
end;
