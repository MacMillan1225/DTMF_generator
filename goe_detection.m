function [fl_s, fh_s] = goe_detection(x,T_s)
%GOE_DETECTION 此处显示有关此函数的摘要
%   此处显示详细说明
    load("frequency.mat");
    y=my_goertzel(x,T_s,f);
    [~, index_l] = max(y(1:4));
    [~, index_h] = max(y(5:8));
    fl_s = f(index_l); fh_s = f(index_h+4);
    stem(f,abs(y));
end

