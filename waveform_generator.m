function [output, t] = waveform_generator(Amplitude,frequency,T_s,method)
%WAVEFORM_GENERATOR 生成波形
%   method0：内建，1：查表，2：数字振荡器
    if(~exist("method",'var'))
        method = 0;
    end

    t = 0:T_s:2*pi;
    if (method==2)
        disp('using digital oscillator method')
        n = 0:(2*pi/T_s);
        w0 = cos(2*pi*frequency*T_s);
        num=[Amplitude -Amplitude*w0];
        den=[1 -2*w0 1];
        x=(n==0);
        output=filter(num,den,x);
    else
        output = Amplitude*cosine(2.*pi.*frequency.*t,method);
    end
end

