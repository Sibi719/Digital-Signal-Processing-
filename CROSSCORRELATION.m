clc;
clear all;
close all;
fprintf('\nTHE SEQUENCE y[n]');
disp('');
n11=input('\nENTER THE VALUE FOR n1   ');
n12=input('\nENTER THE VALUE FOR n2   ');
n=n11:1:n12;
m1=numel(n);
e=n11;
disp(' ');
disp('ENTER THE SEQUENCE y[n]');
for i=1:1:m1
    fprintf('[%d]  ',e);
      y(i)=input('');
      e=e+1;
end
subplot(1,3,1);
n=n11:n12;
stem(n,y);
title('y[n]');
axis([n11-3 n12+3 min(y)-5 max(y)+5]);
fprintf('THE SEQUENCE x[n]');
disp('')
n21=input('\nENTER THE VALUE FOR n1   ');
n22=input('\nENTER THE VALUE FOR n2   ');
n=n21:1:n22;
m2=numel(n);
e=n21;
disp(' ');
disp('\nENTER THE SEQUENCE');
for i=1:1:m2
    fprintf('x[%d]  ',e);
      x(i)=input('');
      e=e+1;
end
subplot(1,3,2);
n=n21:n22;
stem(n,x);
title('x[n]');
axis([n21-3 n22+3 min(x)-5 max(x)+5]);
%time reversing y[n]
i=1;
for z=0:m1-1
    yr(i)=y(m1-z);
    i=i+1;
end
disp(yr)
y1=zeros(numel(yr),m1+m2-1);
yr=[yr,zeros(1,m1+m2-1-numel(yr))];
for i=1:4
    y1(i,:)=yr;
    yr=circshift(yr,[0 1]);
end
disp(y1')
g=y1'*x';
n1=n11+n21;
subplot(1,3,3);
n2=m1+m2+n1-2;
n3=n1:n2;
stem(n3,g);
title('CCORRELATED OUTPUT');
axis([n1-2 n2+2 min(g)-2 max(g)+2]);