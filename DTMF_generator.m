function [output] = DTMF_generator(fl,fh,Amplitude,T_s,method)
%DTMF_GENERATOR 生成完整的DTMF波形
%   输入fl,fh,Amplitude,T_s,method,其中method：0：内建，1：查表，2：数字振荡器生成
    if(~exist("Amplitude",'var'))
        Amplitude = 1;
    end
    if(~exist("T_s",'var'))
        T_s = 0.01;
    end
    if(~exist("method",'var'))
        method = 0;
    end
    output = waveform_generator(Amplitude,fl,T_s,method)+waveform_generator(Amplitude,fh,T_s,method);
end

