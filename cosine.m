function [output] = cosine(value,method)
%COSINE 使用类似内建cos函数，但可以定义method:0=内建，1=查表法
    if (method==0)
        disp('using instruction sin() method')
        output = cos(value);
    elseif (method==1)
        disp('using Look-up method')
        preoutput = zeros(size(value));
        count = 0;
        for i=value
            count=count+1;
            p_value = abs(i*2/pi);
            i_part = floor(p_value); d_part = p_value-i_part;
            l2b = bitget(i_part,1:2);
            p1 = xor(l2b(1),l2b(2));
            p2 = xor(l2b(1),0);
            preoutput(count) = (-1)^(p1)*s_table(p2+(-1)^p2*d_part);        
        end
        output = preoutput;
    end

end

