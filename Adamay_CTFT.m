clc
clear all;

t=-2:0.001:2;

p=(t>=-0.25)-(t>=0.25);

subplot (2,2,1)

plot (t,p)



grid on

title('Input Rectangular Pulse Signal')

w=-30*pi:0.01:30*pi;

for i=1:length (w)
    m(i) = trapz (t,p.*exp(-1i*w(i).*t));

end
ylim([-1 2])

subplot (2,2,2)

plot (w, abs (m));



xlabel('Frequency (rad/s)');

ylabel('Magnitude')


grid on







subplot (2,2,3)



plot (w, angle (m));

xlabel('Frequency (rad/s)');


ylabel('Phase')

subplot(2,2,4);
plot(w,(m));
title('Output 102115046')