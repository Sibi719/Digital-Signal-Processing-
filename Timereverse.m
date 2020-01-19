
clc;
clear all;
close all;
n1=input('ENTER THE VALUE FOR n1   ');
n2=input('ENTER THE VALUE FOR n2   ');
n=n1:n2;
m=numel(n);
e=n1;
disp(' ');
disp('ENTER THE SEQUENCE');
for i=1:1:m
    fprintf('x[%d]  ',e);
      x(i)=input('');
      e=e+1;
end
subplot(1,2,1);
n=n1:n2;
stem(n,x);
title('THE ORIGINAL SIGNAL');
axis([n1-3 n2+3 min(x)-5 max(x)+5]);
fprintf('TIME REVERSED SIGNAL');
i=1;
for z=0:m-1
    y(i)=x(m-z);
    i=i+1;
end
subplot(1,2,2);
n=-n2:-n1;
stem(n,y);
axis([-n2-3 -n1+3 min(y)-5 max(y)+5]);
title('TIME REVERSED SIGNAL');



