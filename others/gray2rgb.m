% 'SLICSuperpixelSegmentation.exe' can not process gray images, 
% consider converting single channel information to three channels(rgb),
% which can be thought of pseudo color map.
% by XioSUN

function PseudoRGB =gray2rgb(input_im)
[m, n, k]=size(input_im);
if k ~=1
    return
else
    PseudoRGB = zeros(m, n, 3);
    for i=1:3
        PseudoRGB(:,:,i) = input_im;
    end
end
    