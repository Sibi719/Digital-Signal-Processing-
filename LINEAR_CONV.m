clc;
clear all;
close all;
fprintf('\nTHE SEQUENCE h[n]');
disp('');
n11=input('\nENTER THE VALUE FOR n1   ');
n12=input('\nENTER THE VALUE FOR n2   ');
n=n11:1:n12;
m1=numel(n);
e=n11;
disp(' ');
disp('\nENTER THE SEQUENCE');
for i=1:1:m1
    fprintf('h[%d]  ',e);
      h(i)=input('');
      e=e+1;
end
subplot(1,3,1);
n=n11:n12;
stem(n,h);
title('h[n]');
axis([n11-3 n12+3 min(h)-5 max(h)+5]);
fprintf('\nTHE SEQUENCE x[n]');
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
x1=zeros(numel(x),m1+m2-1);
x=[x,zeros(1,m1+m2-1-numel(x))];
for i=1:4
    x1(i,:)=x;
    x=circshift(x,[0 1]);
end
disp(x1')
g=x1'*h';
n1=n11+n21;
subplot(1,3,3);
n2=m1+m2+n1-2;
n3=n1:n2;
stem(n3,g);
title('CONVOLVED OUTPUT');
axis([n1-2 n2+2 min(g)-2 max(g)+2]);

