% 生成一个struct，包含了每个code对应的fl, fh和fs(fl+fh)

fl = [697 770 852 941];
fh = [1209 1336 1477 1633];
code = ['1' '2' '3' 'A'; '4' '5' '6' 'B'; '7' '8' '9' 'C'; '*' '0' '#' 'D'];
sol = [];
for i = 1:4
    for j = 1:4
        b = struct('fl',fl(i),'fh',fh(j),'fs',fl(i)+fh(j),'value',code(i,j));
        sol = [sol b];
    end
end
save("sol.mat","sol")