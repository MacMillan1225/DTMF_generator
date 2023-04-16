function [fl, fh] = search_value(value)
%SEARCH_VALUE 输入一个字符，返回fl和fh
%   字符可以包括：['1' '2' '3' '4' '5' '6' '7' '8' '9' '0' '*' '#' 'A' 'B' 'C' 'D'];
    load('sol.mat');
    for i=sol
        if i.value==value
            fl=i.fl;
            fh=i.fh;
        end
    end
end