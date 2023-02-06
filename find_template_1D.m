1;
% Find template 1D
% NOTE: Function definition must be the very first piece of code here!
function index = find_template_1D(t, s)
    % TODO: Locate template t in signal s and return index
    % NOTE: Turn off all output from inside the function before submitting!
    c = normxcorr2(t,s);
    disp ('c: '),disp(c);
    [maxValue rawIndex] = max(c);
    %rawindeix is not actual location
    i = size(t,2);
    disp(i);
    disp(rawIndex);
    index = rawIndex-size(t,2) ;
    index = index+1;
endfunction

pkg load image; % AFTER function definition

% Test code:
s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0];
disp('Signal:'), disp([1:size(s, 2); s]);
disp('Template:'), disp([1:size(t, 2); t]);

index = find_template_1D(t, s);
disp('Index:'), disp(index);
