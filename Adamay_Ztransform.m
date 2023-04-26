clc
clear all

b=[1 0];
a=[1 -0.9];
subplot(3,1,1)
zplane(b,a)

w=-4*pi:0.01:4*pi;
x=freqz(b,a,w);
subplot(3,1,2)
T=abs(x);
plot(w/pi,T);
xlabel('Normalized Frequency');
ylabel('Magnitude(dB)');
title('Magnitude plot');

anglex=angle(x);
subplot(3,1,3)
plot(w/pi,anglex)
xlabel('Normalized Freq')
ylabel('Phase(degree)')