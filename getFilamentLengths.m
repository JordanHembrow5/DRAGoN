function len = getFilamentLengths(lbl)
% GETFILAMENTLENGTHS  determines the length of filaments from LABELMATRIX
%
%   @input: lbl - a labelled matrix
%
%   @output: len - array containing filament lengths; index corresponds
%   to the label number from lbl
%
%   Any lengths of NaN returned would suggest that index doesn't exist.
%   This is done so that mead and std calculations remain accurate with the
%   correct flag options
%
%   If one labelled filament (8-connected) becomes n connected filaments
%   when 4-connected, then there are n-1 diagonal joins, each adding 
%   (sqrt(2)-1) to the length.

    no_of_filaments = max(lbl, [], 'all');
    len = NaN(no_of_filaments,1);
    extra_diag_len = sqrt(2)-1; %moving diagonally is longer by this much
    for i = 1:no_of_filaments
        filament = (lbl == i); %grab a single filament in the entire image
        px_sum = sum(filament,'all','omitnan');
        filament_lbl = bwlabel(filament,4); %relabel with 4-connected rules
        n = max(filament_lbl,[],'all','omitnan') - 1; %num of diagonal joins
        len(i) = px_sum + (n*extra_diag_len);
    end
end