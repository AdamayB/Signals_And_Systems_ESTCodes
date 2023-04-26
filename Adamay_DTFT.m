clc
clear all;

t=-10:0.01:10;
p=(t>=-3)-(t>=3)
subplot(2,2,1);
stem(t,p)
xlim([-10 10]);
ylim([-2 2]);
title('Pulse');

w=-4*pi:0.1:4*pi;
for i=1:length(w)
     m(i)=trapz(t,p.*exp(-j*w(i).*t));
end

subplot(2,2,2);
stem(w,(m));

xlim([-4 4]);
grid on
title('DTFT Output Signal');

subplot(2,2,3);
stem(w,abs(m));
grid on;
xlabel('Frequency');
ylabel('Magnitude');
title('Magnitude 102115046')
ylim([-1 7]);
xlim([-13 13]);

subplot(2,2,4);
stem(w,angle(m));
title('Angle 102115046')
