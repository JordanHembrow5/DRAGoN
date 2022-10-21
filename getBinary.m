function b = getBinary(BW, msk, prc_thresh)
% GETBINARY  Produces binary image from greyscale image of filamentous content
%
%   @input: BW - greyscale image of filamentous content
%           msk - binary mask of the region of interest
%           prc_thresh - percentile value for thresholding
%
%   @output: b - binary image

    im_fib = fibermetric(BW);
    msk = msk > 0; %ensure binary
    b = im_fib > prctile(im_fib(msk),prc_thresh,'all');
    b = bwareaopen(b,50); %remove very small fragments
    b(~msk) = 0;
end