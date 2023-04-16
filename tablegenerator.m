%生成cos lookup table
bit = 4;
p = 1/(2^bit);
x = 0:p:1;
cosine_table = [x;cos(x*(pi/2))];
save('cosine_table.mat','cosine_table')