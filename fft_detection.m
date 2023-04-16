function [fl,fh] = fft_detection(x,T_s)
%FFT_DETECTION 输入DTMF波形，进行解码（将自动画图）
%   x为波形，T_s为时间间隔
    fs=1/T_s;
    y=fft(x);
    N=length(y);
    f=(0:N-1)'*fs/N;
    plot(f,abs(y));
    [~,locs] = findpeaks(abs(y),f);
    fl = round(locs(1));
    fh = round(locs(2));
end

