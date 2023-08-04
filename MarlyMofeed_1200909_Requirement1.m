base = 10;
t1=[-base/2,base/2];
figure(1);
syms a b c x
for i=1:1:3
fplot(12*triangularPulse(t1(1)+base/4,(t1(1)+t1(2))/2,t1(2)-base/4,x), t1,'r');
% Put Label on X-Axis & Y-Axis and also add titles
xlabel('X');
ylabel('Y');
title('Three Periods of the Triangular Signal');
t1=t1+base;
 hold on;
end
