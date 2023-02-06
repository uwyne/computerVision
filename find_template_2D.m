2;
% Find template 2D
% NOTE: Function definition must be the very first piece of code here!
function [yIndex xIndex] = find_template_2D(t, img)
    % TODO: Find t in img and return [y x] location
    % NOTE: Turn off all output from inside the function before submitting!
    c = normxcorr2(t,img);
    disp(c);
    [yRaw xRaw] = find(c==max(c(:)));


    i1=size(t, 1);
    yIndex=yRaw.-i1;
    i2=size(t, 2);

    xIndex=xRaw;%–i2;
    yIndex = yIndex +1;
    xIndex = xIndex -i2+1;
endfunction

pkg load image; % AFTER function definition

% Test code:
tablet = imread('D:\Educational\computerVision\usman.jpg');
imshow(tablet);
glyph = tablet(75:165, 150:185);
imshow(glyph);

[y x] = find_template_2D(glyph, tablet);
disp([y x]); % should be the top-left corner of t in tablet

