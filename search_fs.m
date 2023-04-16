function [fl, fh, value] = search_fs(value)
%SEARCH_FS 输入fl+fh的和，求得fl,fh,value三值
    load('sol.mat');
    for i=sol
        if i.fs == value
            fl=i.fl;
            fh=i.fh;
            value=i.value;
        end
    end
end
