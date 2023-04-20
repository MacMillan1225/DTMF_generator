clc
clear
value = ['1' '2' '3' '4' '5' '6' '7' '8' '9' '0' '*' '#' 'A' 'B' 'C' 'D'];
%value = '#';
for i=value
%% searching

T_s = 1e-4;
method=2;
amplitude=1;

[fl,fh] = search_value(i);
%% detection

[x,t]=DTMF_generator(fl,fh,amplitude,T_s,method);
%[fl_s,fh_s]=fft_detection(x,T_s);
[fl_s,fh_s]=goe_detection(x,T_s);

[~,~,value]=search_fs(fl_s+fh_s);
value
end