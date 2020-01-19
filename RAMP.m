clc;

clear all;
n=-5:5;
i=1;
for n=-5:5
    if n>0
        y(i)=n;
    else
        y(i)=0;
        
    end
   i=i+1;
end
n=-5:5;
stem(n,y);
xlabel('n');
ylabel('r[n]');
title('RAMP SEQUENCE');
axis([-5 7 0 7]);

