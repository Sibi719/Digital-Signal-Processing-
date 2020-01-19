clc;
clear all;
n1=input('ENTER THE VALUE FOR n1   ');
n2=input('ENTER THE VALUE FOR n2   ');
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
a=input('ENTER THE FRACTIONAL SCALING FACTOR  ');
h=1;
for i=1:m
    y(h)=x(i);
    h=h+abs(a);
end
j=m+((abs(a)-1)*(m-1));
k=j-m;
n1=n1-(k/2);
n2=n2+(k/2);
if(a>0)
subplot(1,2,2);
n=n1:n2;
stem(n,y);
axis([n1-3 n2+3 min(y)-5 max(y)+5]);
title('TIME SCALED SIGNAL');
else
  i=1;
for z=0:j-1
    h(i)=y(j-z);
    i=i+1;
end
subplot(1,2,2);
n=-n2:-n1;
stem(n,h);
axis([-n2-3 -n1+3 min(h)-5 max(h)+5]);
title('TIME REVERSED SIGNAL');
end






    
