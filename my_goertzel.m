function [output] = my_goertzel(x,T_s,f)
    R = 1/T_s;
    N = 900;
    count = 1;
    preoutput = zeros(1,length(f));

    for fre=f
        K = round(0.5+(N*fre/R));
        w = (2*pi*K) / N;
        S = sin(w);
        C = cos(w);
        coeff = 2*C;

        Q1 = 0;
        Q2 = 0;

        for value = 1:N
            Q0 = coeff*Q1-Q2+x(value);
            Q2 = Q1;
            Q1 = Q0;
        end

        preoutput(1,count) = (Q1 - Q2*C)+1i*(Q2*S);
        count=count+1;
    end
    output = preoutput;