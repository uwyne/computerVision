1;

function output = blend(a, b, alpha)

    interima =  alpha .* a;
    interimb = alpha .*b;
    output = interima .* interimb;

endfunction

% Test code:
dolphin = imread('usman.jpg');
bicycle = imread('ahmed.jpg');

result = blend(dolphin, bicycle, 0.75);
imshow(result); % note: will result in an error if blend() returns empty or incorrect value


