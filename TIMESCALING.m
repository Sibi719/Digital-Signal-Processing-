clc;
clear all;
n1=input('\nENTER THE VALUE FOR n1   ');
n2=input('\nENTER THE VALUE FOR n2   ');
n=n1:1:n2;
m=numel(n);
e=n1;
disp(' ');
disp('\nENTER THE SEQUENCE');
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
a=input('ENTER THE SCALING FACTOR  ');
z=1;
s=n1*a;
for i=1:m
    if((s>=n1) && (s<=n2))
        y(i)=x(z)
        z=z+a;
    else 
        y(i)=0
    end
    s=s+a;
end
subplot(1,2,2);
n=n1:n2
stem(n,y);
title('TIME SCALED SIGNAL');
axis([n1-3 n2+3 min(y)-5 max(y)+5]);


        