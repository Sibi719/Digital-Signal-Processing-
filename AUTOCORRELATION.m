clc;
clear all;
close all;
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
subplot(1,2,1);
n=n21:n22;
stem(n,x);
title('x[n]');
axis([n21-3 n22+3 min(x)-5 max(x)+5]);
%time reversing x[n]
i=1;
for z=0:m2-1
    xr(i)=x(m2-z);
    i=i+1;
end
disp(xr)
r=numel(xr);
y1=zeros(numel(xr),m2+m2-1);
xr=[xr,zeros(1,m2+m2-1-numel(xr))];
for i=1:r
    y1(i,:)=xr;
    xr=circshift(xr,[0 1]);
end
disp(y1')
g=y1'*x';
n11=-n22;
n12=-n21;
n1=n11+n21;
subplot(1,2,2);
n2=m2+m2+n1-2;
n3=n1:n2;
stem(n3,g);
title('CCORRELATED OUTPUT');
axis([n1-2 n2+2 min(g)-2 max(g)+2]);