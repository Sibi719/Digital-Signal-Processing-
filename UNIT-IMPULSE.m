
%UNIT IMPULSE FUNCTION
clear all;
for n2=-2:1:2
 if n2==0
  y2=ones(1);
  stem(n2,y2);
  xlabel('n');
  ylabel('Amplitude');
  title('UNIT IMPULSE');
  axis([-2 2 0 3]);
 end
end
