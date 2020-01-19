
clc;
clear all;
close all;
n1=0;
n2=input('ENTER THE VALUE FOR n2   ');
n=n1:n2;
m=numel(n);
e=n1;
disp(' ');
c=0;
disp('ENTER THE SEQUENCE');
for i=1:m
    fprintf('x[%d]  ',e);
      x(i)=input('');
      e=e+1;
      if imag(x(i))~=0
          c=c+1;
      end
end
if c>0
p=1;
u=zeros(1,c);
for i=1:m
    if imag(x(i))~=0
        u(p)=conj(x(i));
        p=p+1;
    end
end
x=[x,u];
disp(x)
else disp(x);
end
N=input('Enter the value of N  ');
p=1;
y=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        b=(1/N)*(x(n+1)*exp((1i*(2*pi*k*n)/N)));
        y(p)=y(p)+b;
        g(p)=abs(y(p));
    end
    p=p+1;
    if p>N
        p=p-1;
    end
end
fprintf('\nTHE SEQUENCE x(k) IS');
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

