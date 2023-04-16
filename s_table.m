function [output] = s_table(x)
%S_TABLE cos的查表代码
%   同内建cos
    load("cosine_table.mat");
    [~, index] = min(abs(cosine_table(1,:)-x));
    output = cosine_table(2, index);
end

