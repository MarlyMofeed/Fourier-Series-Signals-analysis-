% Define the base length of the equilateral triangle
base = 10;
t1=[-base/2,base/2];
figure;
syms a b c x
for i=1:1:3
fplot(12*triangularPulse(t1(1)+base/4,(t1(1)+t1(2))/2,t1(2)-base/4,x), t1,'r');
% Put Label on X-Axis & Y-Axis and also add titles
 tri(i)=12*triangularPulse(t1(1)+base/4,(t1(1)+t1(2))/2,t1(2)-base/4,x);
xlabel('X');
ylabel('Y');
title('Three Periods of the Triangular Signal');
t1=t1+base;
 hold on;
end
% Define the y-coordinates of the vertices
t1=[-base/2,base/2];

% Define the time range
t = linspace(-5, 25, 1000);
% Define the DC term of the signal
x = 3*ones(size(t));

% Define the number of sinusoids to add
num_sinusoids = 20;
figure;
% Loop over the number of sinusoids and add them to the signal
for k = 1:num_sinusoids
    % Define the kth sinusoid
    s_k = sinc(k/4).^2 .* cos(k*(pi/5)*t);
    plot(t, x,'b');
    % Add the kth sinusoid to the signal
    % Update the plot of the synthesized signal
    xlabel('Time');
    ylabel('Amplitude');
    title(['Synthesized Signal (', num2str(k), ' sinusoids)']);
    hold on;
t1=[-base/2,base/2];
for j=1:1:3
fplot(tri(j),t1,'r')
t1=t1+base;
end
% Plot the triangle for one period
    legend('Synthesized Signal', 'Original Signal');
    hold off;
    % Update the plot and pause for a short time to see the difference
    drawnow;
    pause(0.5);
    x = x + 6*s_k;
end