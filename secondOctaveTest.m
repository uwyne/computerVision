function output = blend(a, b, alpha)
    % TODO: Your code here; finally assign: output = <something>;
    %scalea = a;
    %scaleb = b;
    %output = scalea.*scaleb;
    output = a * b;
endfunction

% Test code:
dolphin = imread('usman.jpg');
bicycle = imread('ahmed.jpg');

result = blend(dolphin, bicycle, 0.75);
imshow(result); % note: will result in an error if blend() returns empty or incorrect value


