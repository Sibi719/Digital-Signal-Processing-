%To read input signal
clc;
clear all;
n1=input('ENTER THE VALUE FOR n1   ');
n2=input('ENTER THE VALUE FOR n2   ');
n=n1:1:n2;
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
k=input('enter the  value by which the signa should be shifted  ');
fprintf('The time shifted signal is');
subplot(1,2,2)
n=n1-k:n2-k;stem(n,x);
axis([n1-k-3 n2-k+3 min(x)-5 max(x)+5]);
title('TIME SHIFTED SIGNAL ');
  
    
    





    
