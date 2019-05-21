% 'SLICSuperpixelSegmentation.exe' can not process gray images, 
% consider copying information from a single channel to multiple channels(RGB),
% the generated picture can be thought of a pseudo color map.
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
    