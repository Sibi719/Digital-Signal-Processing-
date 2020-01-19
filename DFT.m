clc;
clear all;
close all;
n1=0;
n2=input('ENTER THE VALUE FOR n2   ');
n=n1:n2;
L=numel(n);
e=n1;
disp(' ');
disp('ENTER THE SEQUENCE');
for i=1:L
    fprintf('x[%d]  ',e);
      x(i)=input('');
      e=e+1;
end
subplot(1,2,1);
n=n1:n2;
stem(n,x);
axis([n1-3 n2+3 min(x)-5 max(x)+5]);
title('THE INPUT SEQUENCE');
N=input('Enter the value of N ');
if L<N
    x=[x,zeros(1,N-L)];
end
p=1;
y=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        b=x(n+1)*exp(-(1i*(2*pi*k*n)/N));
        y(p)=y(p)+b;
        g(p)=abs(y(p));
    end
    p=p+1;
    if p>N
        p=p-1;
    end
end
fprintf('\nTHE %d POINT DFT OF THE INPUT IS',N);
fprintf('\n');
for i=1:p
disp(y(i))
end
%magnitude spectra
disp(g)
subplot(1,2,2)
n=0:N-1;
plot(n,g);
title('MAGNITUDE RESPONSE');
axis([-1 N min(g)-1 max(g)+1]);

        
        

